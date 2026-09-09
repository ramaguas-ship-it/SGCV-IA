# ==============================================================================
# 06_Experimento/scripts_analisis/01_importar_datos.R
# ------------------------------------------------------------------------------
# Carga los datos crudos que alimentan el componente empirico (Enfoque 3):
#   - Respuestas del cuestionario (60 respuestas, 4 perfiles)
#   - Transcripciones de entrevistas (16, ya codificadas tematicamente)
#
# Este script NO vuelve a parsear los archivos crudos desde cero: reusa los
# resultados ya limpios que genera 07_Datos/scripts/importar_datos.R, para
# tener una sola fuente de verdad del parseo (si algo del formato cambia,
# solo hay que corregirlo en un lugar). Aqui simplemente se copian a
# 06_Experimento/datos_procesados/, que es donde vive el resto del pipeline
# de este componente empirico.
#
# NOTA SOBRE "corpus RF/RNF": la plantilla generica de scripts_analisis/README.md
# menciona cargar un "corpus RF/RNF" (usado para comparar Requisitos generados
# por un LLM contra los del equipo humano). Eso corresponde a los Enfoques 1 y 2
# de la guia. Este proyecto trabaja el Enfoque 3 (ver 06_Experimento/prompts_llm/
# README.md, que documenta por que ese enfoque no aplica aqui) -- por lo tanto
# este script NO carga ningun corpus RF/RNF, porque no existe tal artefacto en
# este componente empirico. Si el equipo decide que si aplica, hay que agregarlo
# explicitamente en esta seccion.
#
# Requisitos: R base unicamente.
# Uso: Rscript 06_Experimento/scripts_analisis/01_importar_datos.R
#      (ejecutar desde la raiz del repositorio, DESPUES de
#      07_Datos/scripts/importar_datos.R)
# ==============================================================================

ruta_datos_07       <- "07_Datos/resultados"
ruta_datos_procesados <- "06_Experimento/datos_procesados"

ruta_encuesta_origen        <- file.path(ruta_datos_07, "encuesta_procesada.csv")
ruta_transcripciones_origen <- file.path(ruta_datos_07, "transcripciones_completas.rds")

if (!file.exists(ruta_encuesta_origen) || !file.exists(ruta_transcripciones_origen)) {
  stop(
    "No se encontraron los datos procesados de 07_Datos/resultados/.\n",
    "Corre primero: Rscript 07_Datos/scripts/importar_datos.R\n",
    "(este script depende de sus salidas, no vuelve a parsear los .md/.csv crudos)"
  )
}

if (!dir.exists(ruta_datos_procesados)) {
  dir.create(ruta_datos_procesados, recursive = TRUE)
  cat("Carpeta creada:", ruta_datos_procesados, "\n")
}

# ------------------------------------------------------------------------------
# 1. Encuesta (60 respuestas, 4 perfiles)
# ------------------------------------------------------------------------------
encuesta <- read.csv(ruta_encuesta_origen, encoding = "UTF-8", stringsAsFactors = FALSE, check.names = FALSE)

# Excluir explícitamente cualquier dato identificable, igual que en 07_Datos:
# este componente empírico no debe manejar nombres de participantes.
encuesta <- encuesta[, setdiff(names(encuesta), c("Nombre completo del participante", "Columna 20"))]

cat(sprintf("Encuesta cargada: %d respuestas, %d columnas (sin datos identificables)\n", nrow(encuesta), ncol(encuesta)))

# ------------------------------------------------------------------------------
# 2. Transcripciones (16, con metadata + texto + conteo de palabras)
# ------------------------------------------------------------------------------
transcripciones <- readRDS(ruta_transcripciones_origen)
cat(sprintf("Transcripciones cargadas: %d (%s)\n", nrow(transcripciones), paste(transcripciones$id_participante, collapse = ", ")))

# ------------------------------------------------------------------------------
# 3. Guardar copia de trabajo en 06_Experimento/datos_procesados/
# ------------------------------------------------------------------------------
write.csv(
  encuesta,
  file.path(ruta_datos_procesados, "encuesta_procesada.csv"),
  row.names = FALSE,
  fileEncoding = "UTF-8"
)
saveRDS(transcripciones, file.path(ruta_datos_procesados, "transcripciones_completas.rds"))

cat("\nListo. Datos disponibles en", ruta_datos_procesados, ":\n")
cat(" - encuesta_procesada.csv\n")
cat(" - transcripciones_completas.rds\n")
cat("\n(Sin corpus RF/RNF: no aplica al Enfoque 3 de este proyecto -- ver nota arriba)\n")
