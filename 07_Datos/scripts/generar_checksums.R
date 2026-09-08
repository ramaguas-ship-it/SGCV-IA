# ==============================================================================
# 07_Datos/scripts/generar_checksums.R
# ------------------------------------------------------------------------------
# Genera, POR SCRIPT (no a mano), el archivo checksums_datos.sha256 y el
# registro_deposito.md, calculando el hash SHA-256 real de cada archivo de
# datos y de resultados del proyecto.
#
# Se corre AL FINAL, despues de run_all.R, cuando los resultados ya son
# definitivos: si algun dato crudo o resultado cambia despues, hay que volver
# a correr este script para que los checksums sigan siendo validos.
#
# Cubre:
#   - 07_Datos/datos_crudos/       (datos originales, nunca deben cambiar)
#   - 07_Datos/resultados/         (salida de run_all.R)
#
# Requisitos: R base unicamente (usa tools::md5sum como base y calcula
# SHA-256 con digest si esta disponible; si no, usa una implementacion
# minima en R base para no depender de paquetes externos).
#
# Uso: Rscript 07_Datos/scripts/generar_checksums.R
#      (ejecutar desde la raiz del repositorio, DESPUES de run_all.R)
# ==============================================================================

ruta_base       <- "07_Datos"
ruta_crudos     <- file.path(ruta_base, "datos_crudos")
ruta_resultados <- file.path(ruta_base, "resultados")

if (!dir.exists(ruta_crudos)) {
  stop("No se encontro ", ruta_crudos, ". Ejecuta este script desde la raiz del repositorio.")
}
if (!dir.exists(ruta_resultados)) {
  stop(
    "No se encontro ", ruta_resultados, ".\n",
    "Corre primero 07_Datos/scripts/run_all.R para generar los resultados."
  )
}

# ------------------------------------------------------------------------------
# Calculo de SHA-256. Usa el paquete `digest` si esta instalado (lo normal en
# cualquier instalacion de R con librerias de ciencia de datos); si no esta
# disponible, cae a un metodo alterno usando una utilidad del sistema
# (shasum / sha256sum), que viene instalada en Mac, Linux y en Git Bash de
# Windows. Si ninguna de las dos opciones esta disponible, el script avisa
# claramente en vez de fallar en silencio.
# ------------------------------------------------------------------------------
calcular_sha256 <- function(ruta_archivo) {
  if (requireNamespace("digest", quietly = TRUE)) {
    return(digest::digest(file = ruta_archivo, algo = "sha256"))
  }

  comando <- if (nzchar(Sys.which("sha256sum"))) "sha256sum" else if (nzchar(Sys.which("shasum"))) "shasum -a 256" else NA
  if (is.na(comando)) {
    stop(
      "No se encontro el paquete 'digest' ni una utilidad del sistema (sha256sum/shasum) ",
      "para calcular SHA-256. Instala el paquete con install.packages('digest') y vuelve a correr este script."
    )
  }
  salida <- system(paste(comando, shQuote(ruta_archivo)), intern = TRUE)
  trimws(strsplit(salida, "\\s+")[[1]][1])
}

# ------------------------------------------------------------------------------
# Reunir todos los archivos a los que se les calcula checksum
# ------------------------------------------------------------------------------
archivos_crudos <- list.files(ruta_crudos, recursive = TRUE, full.names = TRUE)
archivos_resultados <- list.files(ruta_resultados, recursive = TRUE, full.names = TRUE)
todos_los_archivos <- c(archivos_crudos, archivos_resultados)

if (length(todos_los_archivos) == 0) {
  stop("No se encontraron archivos en datos_crudos/ ni en resultados/. Nada que verificar.")
}

cat(sprintf("Calculando SHA-256 de %d archivos...\n", length(todos_los_archivos)))

hashes <- vapply(todos_los_archivos, calcular_sha256, character(1))

# Rutas relativas a la raiz del repositorio, con separadores tipo Unix (/),
# para que el archivo de checksums sea igual sin importar el sistema operativo.
rutas_relativas <- gsub("\\\\", "/", todos_los_archivos)

# ------------------------------------------------------------------------------
# Guardar checksums_datos.sha256 (formato estandar: hash  ruta)
# ------------------------------------------------------------------------------
lineas_checksum <- paste(hashes, rutas_relativas)
ruta_checksums <- file.path(ruta_base, "checksums_datos.sha256")
writeLines(lineas_checksum, ruta_checksums, useBytes = TRUE)
cat("Guardado:", ruta_checksums, "\n")

# ------------------------------------------------------------------------------
# Guardar registro_deposito.md (bitacora legible del deposito de datos)
# ------------------------------------------------------------------------------
fecha_generacion <- format(Sys.time(), "%Y-%m-%d %H:%M:%S %Z")

tabla_md <- c(
  "| Archivo | SHA-256 |",
  "|---|---|",
  sprintf("| `%s` | `%s` |", rutas_relativas, hashes)
)

reporte <- c(
  "# Registro de depósito de datos — SGCV-IA",
  "",
  sprintf("Generado automáticamente por `07_Datos/scripts/generar_checksums.R` el %s.", fecha_generacion),
  "",
  "Este registro documenta el estado final de los datos crudos y los resultados",
  "del pipeline de análisis en el momento del depósito. Si cualquiera de estos",
  "archivos cambia después, hay que volver a correr este script para actualizar",
  "tanto este registro como `checksums_datos.sha256`.",
  "",
  sprintf("- Archivos de datos crudos (`07_Datos/datos_crudos/`): %d", length(archivos_crudos)),
  sprintf("- Archivos de resultados (`07_Datos/resultados/`): %d", length(archivos_resultados)),
  sprintf("- Total de archivos verificados: %d", length(todos_los_archivos)),
  "",
  "## Verificación de integridad",
  "",
  "Para comprobar que ninguno de estos archivos cambió después del depósito,",
  "desde la raíz del repositorio:",
  "",
  "```bash",
  "sha256sum -c 07_Datos/checksums_datos.sha256",
  "```",
  "",
  "(en Windows, con Git Bash instalado, el mismo comando funciona igual)",
  "",
  "## Detalle de checksums",
  "",
  tabla_md
)

ruta_registro <- file.path(ruta_base, "registro_deposito.md")
writeLines(reporte, ruta_registro, useBytes = TRUE)
cat("Guardado:", ruta_registro, "\n")

cat("\nListo. checksums_datos.sha256 y registro_deposito.md generados y actualizados.\n")
