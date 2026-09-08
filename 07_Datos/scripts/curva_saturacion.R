# ==============================================================================
# 07_Datos/scripts/curva_saturacion.R
# ------------------------------------------------------------------------------
# Calcula la curva de saturación temática (códigos axiales NUEVOS por
# entrevista, en el orden de recolección P01 -> P16), directamente a partir
# de la evidencia de participantes de cada código axial. NO copia los
# números ya calculados de ningún reporte o gráfico -- los recalcula desde
# la columna Evidencia_participantes del CSV.
#
# Criterio de saturación (el mismo que usa el equipo de análisis): se
# considera sostenida si el promedio de códigos nuevos en las últimas 3
# entrevistas es ≤ 5% del total acumulado de códigos axiales.
#
# Fuente: 02_Evidencias/Codificacion_Tematica/codificacion_axial_SGCV-IA.csv
#
# Requisitos: R base únicamente.
# Uso: Rscript 07_Datos/scripts/curva_saturacion.R
#      (ejecutar desde la raíz del repositorio, después de conteo_codigos.R)
# ==============================================================================

ruta_evidencias  <- "02_Evidencias/Codificacion_Tematica"
ruta_axial       <- file.path(ruta_evidencias, "codificacion_axial_SGCV-IA.csv")
ruta_resultados  <- "07_Datos/resultados"

if (!file.exists(ruta_axial)) stop("No se encontró ", ruta_axial)

axial <- read.csv(ruta_axial, encoding = "UTF-8", stringsAsFactors = FALSE)

orden_participantes <- sprintf("P%02d", 1:16)

# ------------------------------------------------------------------------------
# Para cada código axial, su "primera aparición" es el participante de menor
# orden dentro de su lista de evidencia (columna Evidencia_participantes,
# con los IDs de participante separados por comas).
# ------------------------------------------------------------------------------
primera_aparicion <- vapply(axial$Evidencia_participantes, function(lista) {
  participantes <- trimws(strsplit(lista, ",")[[1]])
  posiciones <- match(participantes, orden_participantes)
  posiciones <- posiciones[!is.na(posiciones)]
  if (length(posiciones) == 0) {
    return(NA_character_)
  }
  orden_participantes[min(posiciones)]
}, character(1))

if (any(is.na(primera_aparicion))) {
  stop(
    "Hay códigos axiales cuya Evidencia_participantes no coincide con ningún ",
    "ID de P01 a P16. Revisa el archivo ", ruta_axial
  )
}

nuevos_por_entrevista <- as.integer(table(factor(primera_aparicion, levels = orden_participantes)))
acumulado <- cumsum(nuevos_por_entrevista)
total_codigos <- sum(nuevos_por_entrevista)

curva <- data.frame(
  entrevista = orden_participantes,
  codigos_axiales_nuevos = nuevos_por_entrevista,
  codigos_axiales_acumulados = acumulado
)

cat("== Curva de saturación temática (calculada desde la evidencia cruda) ==\n")
print(curva, row.names = FALSE)

# ------------------------------------------------------------------------------
# Criterio de saturación: promedio de las últimas 3 entrevistas como
# porcentaje del acumulado final, umbral 5%
# ------------------------------------------------------------------------------
ultimas_3 <- tail(nuevos_por_entrevista, 3)
promedio_ultimas_3 <- mean(ultimas_3)
porcentaje_ultimas_3 <- 100 * promedio_ultimas_3 / total_codigos
saturacion_alcanzada <- porcentaje_ultimas_3 <= 5

cat(sprintf("\nTotal de códigos axiales: %d\n", total_codigos))
cat(sprintf(
  "Promedio de códigos nuevos en las últimas 3 entrevistas (%s): %.2f\n",
  paste(tail(orden_participantes, 3), collapse = ", "), promedio_ultimas_3
))
cat(sprintf("Como porcentaje del acumulado final: %.2f%%\n", porcentaje_ultimas_3))
cat(sprintf("¿Se sostiene la saturación (umbral 5%%)? %s\n", ifelse(saturacion_alcanzada, "SÍ", "NO")))

# ------------------------------------------------------------------------------
# Guardar
# ------------------------------------------------------------------------------
if (!dir.exists(ruta_resultados)) dir.create(ruta_resultados, recursive = TRUE)

write.csv(
  curva,
  file.path(ruta_resultados, "curva_saturacion.csv"),
  row.names = FALSE,
  fileEncoding = "UTF-8"
)

reporte <- c(
  "# Verificación de saturación temática",
  "",
  sprintf("- Total de códigos axiales: %d", total_codigos),
  sprintf(
    "- Promedio de códigos nuevos en las últimas 3 entrevistas (%s): %.2f",
    paste(tail(orden_participantes, 3), collapse = ", "), promedio_ultimas_3
  ),
  sprintf("- Porcentaje del acumulado final: %.2f%%", porcentaje_ultimas_3),
  "- Umbral de saturación: 5%",
  sprintf("- ¿Se sostiene la saturación? %s", ifelse(saturacion_alcanzada, "Sí", "No")),
  "",
  "Calculado a partir de la primera aparición de cada código axial en el orden",
  "de recolección (P01 a P16), usando la columna Evidencia_participantes de",
  "02_Evidencias/Codificacion_Tematica/codificacion_axial_SGCV-IA.csv."
)
writeLines(reporte, file.path(ruta_resultados, "saturacion_reporte.md"), useBytes = TRUE)

cat("\nGuardado en", ruta_resultados, ": curva_saturacion.csv y saturacion_reporte.md\n")
