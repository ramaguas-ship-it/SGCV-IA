# ==============================================================================
# 06_Experimento/scripts_analisis/09_tablas.R
# ------------------------------------------------------------------------------
# Consolida las tablas ya calculadas por los scripts anteriores (04-07) en
# las tablas finales que va a citar el manuscrito, copiandolas a
# 09_Publicacion/tablas/ con nombres estables (los que el manuscrito puede
# referenciar directamente por \input{} o similar). No recalcula nada: solo
# reune lo que ya existe en 06_Experimento/resultados/, para que el
# manuscrito nunca dependa de una ruta interna de analisis que pueda
# reorganizarse despues.
#
# Requisitos: R base unicamente.
# Uso: Rscript 06_Experimento/scripts_analisis/09_tablas.R
#      (ejecutar desde la raiz del repositorio, DESPUES de 08_figuras.R)
# ==============================================================================

ruta_resultados           <- "06_Experimento/resultados"
ruta_salidas_estadisticas <- file.path(ruta_resultados, "salidas_estadisticas")
ruta_tablas_analisis      <- file.path(ruta_resultados, "tablas")
ruta_tablas_publicacion   <- "09_Publicacion/tablas"

if (!dir.exists(ruta_tablas_publicacion)) dir.create(ruta_tablas_publicacion, recursive = TRUE)

# Mapeo: archivo de origen (ya generado por otro script) -> nombre final que
# usará el manuscrito. Si algún origen no existe todavía (porque su script
# no se ha corrido), se avisa y se salta, en vez de fallar todo el script.
tablas_a_consolidar <- list(
  list(origen = file.path(ruta_tablas_analisis, "tabla_saturacion_codigos_abiertos.csv"), destino = "tabla_01_saturacion_codigos_abiertos.csv"),
  list(origen = file.path(ruta_tablas_analisis, "descriptivos_likert.csv"),                destino = "tabla_02_descriptivos_likert.csv"),
  list(origen = file.path(ruta_salidas_estadisticas, "supuestos_shapiro.csv"),              destino = "tabla_03_supuestos_shapiro.csv"),
  list(origen = file.path(ruta_salidas_estadisticas, "supuestos_levene.csv"),               destino = "tabla_04_supuestos_levene.csv"),
  list(origen = file.path(ruta_salidas_estadisticas, "pruebas_hipotesis_perfiles.csv"),     destino = "tabla_05_pruebas_hipotesis.csv"),
  list(origen = file.path(ruta_salidas_estadisticas, "tamano_efecto.csv"),                  destino = "tabla_06_tamano_efecto.csv")
)

cat("== Consolidando tablas para el manuscrito ==\n")

copiadas <- 0
faltantes <- character(0)

for (item in tablas_a_consolidar) {
  if (file.exists(item$origen)) {
    file.copy(item$origen, file.path(ruta_tablas_publicacion, item$destino), overwrite = TRUE)
    cat(sprintf("  OK  %s -> %s\n", basename(item$origen), item$destino))
    copiadas <- copiadas + 1
  } else {
    cat(sprintf("  [FALTA] %s (corre el script que lo genera antes de repetir este paso)\n", item$origen))
    faltantes <- c(faltantes, item$origen)
  }
}

cat(sprintf("\n%d de %d tablas consolidadas en %s\n", copiadas, length(tablas_a_consolidar), ruta_tablas_publicacion))

if (length(faltantes) > 0) {
  cat("\nFaltan por generar (corre los scripts 03-07 en orden, o usa run_all.R):\n")
  cat(paste(" -", faltantes, collapse = "\n"), "\n")
}
