# ==============================================================================
# 06_Experimento/scripts_analisis/01_importar_datos.R
# ------------------------------------------------------------------------------
# Valida que los datos procesados de 07_Datos/resultados/ existan y esten
# listos para el resto del pipeline de este componente empirico.
#
# Este script NO copia ni duplica ningun archivo. Siguiendo la decision ya
# documentada en 06_Experimento/README.md ("El paquete de datos crudos y
# procesados... vive en 07_Datos/, fuera de esta carpeta"), TODOS los datos
# procesados del proyecto -- tanto los de 07_Datos como los que produce el
# pipeline de este componente (encuesta_limpia.csv, etc.) -- se guardan
# UNICAMENTE en 07_Datos/resultados/. 06_Experimento no tiene su propia
# carpeta datos_procesados/.
#
# NOTA SOBRE "corpus RF/RNF": la plantilla generica de scripts_analisis/README.md
# menciona cargar un "corpus RF/RNF", que aplica a los Enfoques 1 y 2 de la
# guia (comparacion LLM vs humano). Este proyecto trabaja el Enfoque 3 (ver
# 06_Experimento/prompts_llm/README.md) -- por eso este script no carga
# ningun corpus RF/RNF, porque no existe tal artefacto en este componente.
#
# Requisitos: R base unicamente.
# Uso: Rscript 06_Experimento/scripts_analisis/01_importar_datos.R
#      (ejecutar desde la raiz del repositorio, DESPUES de
#      07_Datos/scripts/importar_datos.R)
# ==============================================================================

ruta_datos_07 <- "07_Datos/resultados"

ruta_encuesta_origen        <- file.path(ruta_datos_07, "encuesta_procesada.csv")
ruta_transcripciones_origen <- file.path(ruta_datos_07, "transcripciones_completas.rds")

if (!file.exists(ruta_encuesta_origen) || !file.exists(ruta_transcripciones_origen)) {
  stop(
    "No se encontraron los datos procesados de 07_Datos/resultados/.\n",
    "Corre primero: Rscript 07_Datos/scripts/importar_datos.R"
  )
}

encuesta <- read.csv(ruta_encuesta_origen, encoding = "UTF-8", stringsAsFactors = FALSE, check.names = FALSE)
transcripciones <- readRDS(ruta_transcripciones_origen)

cat(sprintf("Encuesta disponible en %s: %d respuestas, %d columnas\n", ruta_datos_07, nrow(encuesta), ncol(encuesta)))
cat(sprintf("Transcripciones disponibles en %s: %d (%s)\n", ruta_datos_07, nrow(transcripciones), paste(transcripciones$id_participante, collapse = ", ")))
cat("\nListo. Los siguientes scripts de este pipeline leen directamente de", ruta_datos_07, "\n")
cat("(sin corpus RF/RNF: no aplica al Enfoque 3 de este proyecto -- ver nota arriba)\n")
