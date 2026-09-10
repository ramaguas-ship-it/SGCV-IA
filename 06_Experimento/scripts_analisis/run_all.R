# ==============================================================================
# 06_Experimento/scripts_analisis/run_all.R
# ------------------------------------------------------------------------------
# Orquestador unico del pipeline de analisis del componente empirico.
# Corre, en orden, los 9 scripts de esta carpeta y genera todos los
# resultados (datos procesados, tablas, figuras, salidas estadisticas) con
# UN SOLO COMANDO, sin intervencion manual.
#
# Uso:
#   Rscript 06_Experimento/scripts_analisis/run_all.R
#   (ejecutar SIEMPRE desde la raiz del repositorio)
#
# Requisito previo: 07_Datos/scripts/importar_datos.R ya debe haberse
# corrido al menos una vez (01_importar_datos.R de esta carpeta depende de
# sus resultados en 07_Datos/resultados/).
#
# Si un script del pipeline todavia no existe, se salta con un aviso en vez
# de detener todo el proceso.
# ==============================================================================

ruta_scripts <- "06_Experimento/scripts_analisis"

if (!dir.exists(ruta_scripts)) {
  stop(
    "No se encontró la carpeta ", ruta_scripts, ".\n",
    "Este script debe ejecutarse desde la raíz del repositorio, ",
    "por ejemplo: Rscript 06_Experimento/scripts_analisis/run_all.R"
  )
}

# ------------------------------------------------------------------------------
# Orden del pipeline
# ------------------------------------------------------------------------------
pipeline <- c(
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
# Ejecución en orden, con manejo de errores y advertencias
# ------------------------------------------------------------------------------
cat("==============================================\n")
cat(" Pipeline de análisis — 06_Experimento\n")
cat("==============================================\n\n")

tiempo_inicio <- Sys.time()
registro_pipeline <- data.frame(script = character(), estado = character(), stringsAsFactors = FALSE)

for (script in pipeline) {
  ruta_script <- file.path(ruta_scripts, script)

  if (!file.exists(ruta_script)) {
    cat(sprintf("[OMITIDO] %s todavía no existe — se salta.\n\n", script))
    registro_pipeline <- rbind(registro_pipeline, data.frame(script = script, estado = "omitido (no existe todavía)"))
    next
  }

  cat(sprintf("== Ejecutando %s ==\n", script))

  hubo_advertencias <- FALSE

  estado <- tryCatch({
    withCallingHandlers({
      source(ruta_script, encoding = "UTF-8", echo = FALSE)
    }, warning = function(w) {
      cat(sprintf("ADVERTENCIA en %s: %s\n", script, conditionMessage(w)))
      hubo_advertencias <<- TRUE
      invokeRestart("muffleWarning")
    })
    if (hubo_advertencias) "OK (con advertencias)" else "OK"
  }, error = function(e) {
    cat(sprintf("ERROR en %s: %s\n", script, conditionMessage(e)))
    "ERROR"
  })

  registro_pipeline <- rbind(registro_pipeline, data.frame(script = script, estado = estado))
  cat("\n")

  if (estado == "ERROR") {
    cat("Pipeline detenido: hubo un error en el script anterior.\n")
    cat("Corrígelo y vuelve a correr run_all.R desde el inicio.\n")
    break
  }
}

tiempo_fin <- Sys.time()

# ------------------------------------------------------------------------------
# Resumen final
# ------------------------------------------------------------------------------
cat("==============================================\n")
cat(" Resumen del pipeline\n")
cat("==============================================\n")
print(registro_pipeline, row.names = FALSE)
cat(sprintf(
  "\nTiempo total: %.1f segundos\n",
  as.numeric(difftime(tiempo_fin, tiempo_inicio, units = "secs"))
))

if (any(registro_pipeline$estado == "ERROR")) {
  cat("\nEl pipeline terminó con al menos un error. Revisa los mensajes de arriba.\n")
  quit(status = 1, save = "no")
}

cat("\nListo. Resultados en 06_Experimento/datos_procesados/, resultados/ y 09_Publicacion/{tablas,figuras}/\n")
