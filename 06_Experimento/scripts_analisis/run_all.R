# ==============================================================================
# 06_Experimento/scripts_analisis/run_all.R
# ------------------------------------------------------------------------------
# Orquestador del componente cuantitativo (Enfoque 3). Ejecuta, EN ORDEN,
# los 9 scripts de esta carpeta, de principio a fin, partiendo de los datos
# crudos y terminando en las tablas y figuras finales del manuscrito.
#
# Esto es lo que exige el checklist de aceptacion (Seccion 9.3 de la guia):
# que un solo comando reproduzca exactamente las cifras del manuscrito.
# Ningun script debe contener resultados escritos a mano.
#
# Cadena de dependencias (documentada en el encabezado de cada script):
#   01_importar_datos.R              <- 07_Datos/resultados/ (debe existir)
#   02_limpieza.R                    <- salida de 01
#   03_curva_saturacion_...R         <- 02_Evidencias/Codificacion_Tematica/
#                                        (independiente de 01/02; es el
#                                        analisis cualitativo)
#   04_descriptivos.R                <- salida de 02
#   05_supuestos.R                   <- salida de 02
#   06_pruebas_hipotesis.R           <- salida de 02 y 05
#   07_tamano_efecto.R               <- salida de 02
#   08_figuras.R                     <- salida de 02 y 07
#   09_tablas.R                      <- salida de 03-07 (consolida tablas
#                                        finales hacia 09_Publicacion/tablas/)
#
# Si un script falla, run_all.R se detiene ahi mismo (no sigue con los
# siguientes sobre datos incompletos) e indica exactamente cual script
# fallo y por que, para corregir y volver a correr desde el principio.
#
# Requisitos: los mismos de cada script individual. En particular,
# 05_supuestos.R necesita el paquete 'car' (install.packages("car")).
#
# Uso: Rscript 06_Experimento/scripts_analisis/run_all.R
#      (ejecutar SIEMPRE desde la raiz del repositorio, nunca parado
#      dentro de scripts_analisis/, porque todas las rutas de los
#      scripts son relativas a la raiz)
# ==============================================================================

ruta_carpeta_scripts <- "06_Experimento/scripts_analisis"

scripts_en_orden <- c(
  "01_importar_datos.R",
  "02_limpieza.R",
  "03_curva_saturacion_codigos_abiertos.R",
  "04_descriptivos.R",
  "05_supuestos.R",
  "06_pruebas_hipotesis.R",
  "07_tamano_efecto.R",
  "08_figuras.R",
  "09_tablas.R"
)

# ------------------------------------------------------------------------------
# 0. Verificar que se está ejecutando desde la raíz del repositorio.
#    (Si esto falla con rutas relativas raras, es casi siempre porque se
#    corrió parado dentro de scripts_analisis/ en vez de la raíz del repo.)
# ------------------------------------------------------------------------------
if (!dir.exists("06_Experimento") || !dir.exists("07_Datos")) {
  stop(
    "No se encontraron las carpetas '06_Experimento/' y '07_Datos/' en el ",
    "directorio actual (", normalizePath("."), ").\n",
    "Este script debe ejecutarse desde la RAIZ del repositorio, no desde ",
    "dentro de scripts_analisis/.\n",
    "Ejemplo correcto: Rscript 06_Experimento/scripts_analisis/run_all.R"
  )
}

rutas_scripts <- file.path(ruta_carpeta_scripts, scripts_en_orden)
scripts_faltantes <- rutas_scripts[!file.exists(rutas_scripts)]
if (length(scripts_faltantes) > 0) {
  stop(
    "Faltan estos scripts en ", ruta_carpeta_scripts, "/:\n",
    paste(" -", scripts_faltantes, collapse = "\n")
  )
}

# ------------------------------------------------------------------------------
# 1. Ejecutar cada script en orden, deteniéndose de inmediato si alguno falla
# ------------------------------------------------------------------------------
hora_inicio_total <- Sys.time()
cat(strrep("=", 80), "\n")
cat("run_all.R -- 06_Experimento/scripts_analisis\n")
cat("Inicio:", format(hora_inicio_total, "%Y-%m-%d %H:%M:%S"), "\n")
cat(strrep("=", 80), "\n\n")

for (i in seq_along(scripts_en_orden)) {
  nombre_script <- scripts_en_orden[i]
  ruta_script <- rutas_scripts[i]

  cat(strrep("-", 80), "\n")
  cat(sprintf("[%d/%d] Ejecutando: %s\n", i, length(scripts_en_orden), nombre_script))
  cat(strrep("-", 80), "\n")

  hora_inicio <- Sys.time()

  resultado <- tryCatch(
    {
      # local(): cada script corre en su propio entorno, para que variables
      # con el mismo nombre en distintos scripts (ej. "encuesta") no se
      # pisen entre si ni se acumulen de un script a otro.
      source(ruta_script, local = new.env(), echo = FALSE)
      TRUE
    },
    error = function(e) {
      cat("\n")
      cat(strrep("!", 80), "\n")
      cat("ERROR en", nombre_script, "\n")
      cat(strrep("!", 80), "\n")
      cat(conditionMessage(e), "\n\n")
      cat(sprintf(
        "run_all.R se detuvo en el paso %d de %d. Corrige el problema en '%s'\n",
        i, length(scripts_en_orden), nombre_script
      ))
      cat("y vuelve a correr run_all.R desde el principio (no solo desde aquí,\n")
      cat("para garantizar que todo el pipeline sea consistente).\n")
      FALSE
    }
  )

  if (!isTRUE(resultado)) {
    stop("Ejecución detenida por error en ", nombre_script, call. = FALSE)
  }

  duracion <- round(difftime(Sys.time(), hora_inicio, units = "secs"), 1)
  cat(sprintf("\nOK: %s completado en %s s\n\n", nombre_script, duracion))
}

# ------------------------------------------------------------------------------
# 2. Resumen final
# ------------------------------------------------------------------------------
duracion_total <- round(difftime(Sys.time(), hora_inicio_total, units = "secs"), 1)

cat(strrep("=", 80), "\n")
cat(sprintf(
  "Listo. Los %d scripts se ejecutaron en orden sin errores (%s s en total).\n",
  length(scripts_en_orden), duracion_total
))
cat("\nResultados generados en:\n")
cat(" - 06_Experimento/datos_procesados/            (datos importados y limpios)\n")
cat(" - 06_Experimento/resultados/tablas/            (tablas intermedias 03-04)\n")
cat(" - 06_Experimento/resultados/salidas_estadisticas/ (supuestos, pruebas, efecto)\n")
cat(" - 06_Experimento/resultados/figuras/           (curva de saturación, si aplica)\n")
cat(" - 09_Publicacion/figuras/                      (6 figuras finales del manuscrito)\n")
cat(" - 09_Publicacion/tablas/                       (tablas finales del manuscrito)\n")
cat(strrep("=", 80), "\n")
