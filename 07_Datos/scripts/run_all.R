
# ==============================================================================
# 07_Datos/scripts/run_all.R
# ------------------------------------------------------------------------------
# Orquestador único del pipeline de datos de 07_Datos/.
# Corre, en orden, todos los scripts del pipeline y genera todos los
# resultados en 07_Datos/resultados/ con UN SOLO COMANDO, sin intervención
# manual.
#
# Uso:
#   Rscript 07_Datos/scripts/run_all.R
#   (ejecutar SIEMPRE desde la raíz del repositorio, igual que los demás
#   scripts de este pipeline — no desde dentro de 07_Datos/ ni de scripts/)
#
# Cómo agregar un script nuevo al pipeline (por ejemplo, cuando Marcillo
# confirme la cifra de códigos/categorías y se puedan programar el conteo y
# la curva de saturación): solo hay que agregar su nombre de archivo al
# vector `pipeline` de abajo, en el orden en que debe ejecutarse. No hace
# falta tocar nada más de este script.
#
# Si un script del vector `pipeline` todavía no existe, se salta con un
# aviso en vez de hacer fallar todo el proceso — así este orquestador ya
# puede usarse desde ahora, aunque falten scripts por crear.
# ==============================================================================

ruta_scripts <- "07_Datos/scripts"

if (!dir.exists(ruta_scripts)) {
  stop(
    "No se encontró la carpeta ", ruta_scripts, ".\n",
    "Este script debe ejecutarse desde la raíz del repositorio, ",
    "por ejemplo: Rscript 07_Datos/scripts/run_all.R"
  )
}

# ------------------------------------------------------------------------------
# Orden del pipeline
# ------------------------------------------------------------------------------
pipeline <- c(
  "importar_datos.R",
  "conteo_codigos.R",     # pendiente de crear: depende de la codificación temática de Marcillo
  "curva_saturacion.R",   # pendiente de crear: depende de la codificación temática de Marcillo
  "justificacion_muestra.R"
)

# ------------------------------------------------------------------------------
# Ejecución en orden, con manejo de errores
# ------------------------------------------------------------------------------
cat("==============================================\n")
cat(" Pipeline de datos SGCV-IA — 07_Datos\n")
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
      invokeRestart("muffleWarning")  # registra la advertencia pero deja que el script siga
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

cat("\nListo. Todos los resultados quedaron en 07_Datos/resultados/\n")
