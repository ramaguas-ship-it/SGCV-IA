# ==============================================================================
# 07_Datos/scripts/justificacion_muestra.R
# ------------------------------------------------------------------------------
# 1) Calcula la justificación estadística del tamaño de muestra de la encuesta,
#    comparando el margen de error realmente alcanzado contra el margen de
#    error que se necesitaría para distintos niveles de precisión.
#    El n se lee de los datos (nrow), nunca se hardcodea: el reporte y el
#    nombre del archivo de salida se generan dinámicamente con el n real.
# 2) Genera una tabla AGREGADA (nunca por persona) del perfil de los
#    participantes: rol, años de experiencia y frecuencia de uso.
#
# NOTA SOBRE "frecuencia de uso": la encuesta NO tiene una columna que se
# llame así. Como aproximación (decisión tomada con el equipo) se usa la
# columna "2. ¿Con qué frecuencia considera que se presentan inconvenientes
# durante la atención o gestión en una clínica veterinaria?", que es la
# columna de frecuencia más cercana disponible. Si el equipo define una
# variable de frecuencia de uso más adecuada, solo hay que cambiar el nombre
# de columna en la sección 2 de este script.
#
# PRIVACIDAD: este script lee encuesta_procesada.csv. Si el CSV contuviera una
# columna identificable, debe agregarse a `columnas_excluidas` antes de
# agregar. Ninguna salida de este script permite reidentificar a un
# participante individual.
#
# Requisitos: R base únicamente.
# Uso: Rscript 07_Datos/scripts/justificacion_muestra.R
#      (ejecutar desde la raíz del repositorio, después de importar_datos.R)
# ==============================================================================

# ------------------------------------------------------------------------------
# 0. Configuración de rutas
# ------------------------------------------------------------------------------
ruta_base       <- "07_Datos"
ruta_resultados <- file.path(ruta_base, "resultados")
ruta_encuesta   <- file.path(ruta_resultados, "encuesta_procesada.csv")

if (!file.exists(ruta_encuesta)) {
  stop(
    "No se encontró ", ruta_encuesta, ".\n",
    "Corre primero 07_Datos/scripts/importar_datos.R para generarlo."
  )
}

encuesta <- read.csv(ruta_encuesta, encoding = "UTF-8", stringsAsFactors = FALSE, check.names = FALSE)

# Columnas que NUNCA deben salir de este script (dato identificable / sin uso).
# Nota: la exportación vigente de Google Forms ya no incluye nombres; se
# conserva la exclusión por si una versión futura la vuelve a incluir.
columnas_excluidas <- c("Nombre completo del participante", "Columna 20")
encuesta <- encuesta[, setdiff(names(encuesta), columnas_excluidas), drop = FALSE]

n_muestra <- nrow(encuesta)
cat(sprintf("Tamaño de muestra encontrado en los datos: n = %d\n\n", n_muestra))

# ------------------------------------------------------------------------------
# 1. Justificación del tamaño de muestra
# ------------------------------------------------------------------------------
# Fórmula para proporciones con población desconocida/no finita:
#   n = (Z^2 * p * (1 - p)) / e^2
# Despejando el margen de error alcanzado para un n dado:
#   e = Z * sqrt(p * (1 - p) / n)
#
# Se usa el escenario más conservador: p = 0.5 (máxima variabilidad posible),
# porque no se conoce de antemano la proporción real de respuestas.

Z <- 1.96   # nivel de confianza del 95%
p <- 0.5    # máxima variabilidad (supuesto conservador)

margen_error_alcanzado <- function(n, Z = 1.96, p = 0.5) {
  Z * sqrt((p * (1 - p)) / n)
}

tamano_requerido <- function(e, Z = 1.96, p = 0.5) {
  ceiling((Z^2 * p * (1 - p)) / e^2)
}

e_alcanzado <- margen_error_alcanzado(n_muestra, Z, p)

cat("== Justificación del tamaño de muestra ==\n")
cat(sprintf(
  "Con n = %d, confianza del 95%% (Z = %.2f) y máxima variabilidad (p = 0.5),\n",
  n_muestra, Z
))
cat(sprintf("el margen de error alcanzado es de aproximadamente %.1f%%.\n\n", e_alcanzado * 100))

cat("Tamaño de muestra mínimo necesario para distintos márgenes de error objetivo\n")
cat("(mismo nivel de confianza del 95%%, misma p = 0.5, población no finita):\n")
margenes_objetivo <- c(0.05, 0.10, 0.15)
tabla_requerida <- data.frame(
  margen_error_objetivo = paste0(margenes_objetivo * 100, "%"),
  n_minimo_requerido     = sapply(margenes_objetivo, tamano_requerido, Z = Z, p = p)
)
print(tabla_requerida, row.names = FALSE)

# Conclusión dinámica: se ajusta sola al n real, sin texto hardcodeado.
cat(sprintf(
  "\nConclusión: n = %d se ajusta a un margen de error de ~%.1f%% con 95%% de confianza.\n",
  n_muestra, e_alcanzado * 100
))
if (e_alcanzado <= 0.10) {
  cat(sprintf(
    paste0(
      "La muestra supera el umbral del 10%% típico de estudios cuantitativos ",
      "(se requerirían ~%d respuestas) y se acerca al margen del 5%% (~%d respuestas). ",
      "Para un estudio mixto con componente cualitativo dominante, este tamaño es ",
      "más que razonable para un MVP de la materia ISR-401.\n"
    ),
    tamano_requerido(0.10, Z, p), tamano_requerido(0.05, Z, p)
  ))
} else {
  cat(sprintf(
    paste0(
      "No alcanza el margen del 10%% típico de estudios cuantitativos estrictos ",
      "(se requerirían ~%d respuestas), pero es un tamaño razonable para un ",
      "estudio exploratorio/mixto con recursos y tiempo limitados, como corresponde ",
      "a un MVP de la materia ISR-401.\n"
    ),
    tamano_requerido(0.10, Z, p)
  ))
}

# ------------------------------------------------------------------------------
# 2. Tabla agregada de perfil de participantes (rol, años de experiencia,
#    frecuencia de uso aproximada) — SIEMPRE agregada, nunca fila por persona.
# ------------------------------------------------------------------------------
col_rol          <- "1. Rol del participante (Seleccione una opción)"
col_experiencia  <- "5. En caso de trabajar en una clínica veterinaria, ¿cuántos años de experiencia tiene?"
col_frecuencia   <- "2. ¿Con qué frecuencia considera que se presentan inconvenientes durante la atención o gestión en una clínica veterinaria?"

tabla_agregada <- function(vector_columna, etiqueta) {
  conteo <- table(vector_columna, useNA = "no")
  data.frame(
    variable   = etiqueta,
    categoria  = names(conteo),
    n          = as.integer(conteo),
    porcentaje = round(100 * as.integer(conteo) / n_muestra, 1),
    stringsAsFactors = FALSE
  )
}

perfil_rol         <- tabla_agregada(encuesta[[col_rol]], "Rol del participante")
perfil_experiencia <- tabla_agregada(encuesta[[col_experiencia]], "Años de experiencia (si trabaja en clínica)")
perfil_frecuencia  <- tabla_agregada(encuesta[[col_frecuencia]], "Frecuencia de inconvenientes (aproximación de frecuencia de uso)")

perfil_participantes <- rbind(perfil_rol, perfil_experiencia, perfil_frecuencia)

cat(sprintf("\n== Perfil agregado de participantes (n = %d) ==\n", n_muestra))
print(perfil_participantes, row.names = FALSE)

# ------------------------------------------------------------------------------
# 3. Guardar resultados
# ------------------------------------------------------------------------------
if (!dir.exists(ruta_resultados)) dir.create(ruta_resultados, recursive = TRUE)

write.csv(
  perfil_participantes,
  file.path(ruta_resultados, "perfil_participantes_agregado.csv"),
  row.names = FALSE,
  fileEncoding = "UTF-8"
)

nombre_reporte <- sprintf("justificacion_n%d.md", n_muestra)

reporte <- c(
  sprintf("# Justificación del tamaño de muestra (n = %d)", n_muestra),
  "",
  sprintf("- Tamaño de muestra: n = %d", n_muestra),
  sprintf("- Nivel de confianza: 95%% (Z = %.2f)", Z),
  "- Variabilidad asumida: p = 0.5 (máxima, escenario conservador, población no finita/desconocida)",
  sprintf("- Margen de error alcanzado: ~%.1f%%", e_alcanzado * 100),
  "",
  "## Tamaño mínimo requerido para otros márgenes de error (mismo nivel de confianza)",
  "",
  "| Margen de error objetivo | n mínimo requerido |",
  "|---|---|",
  paste0("| ", tabla_requerida$margen_error_objetivo, " | ", tabla_requerida$n_minimo_requerido, " |"),
  "",
  ifelse(
    e_alcanzado <= 0.10,
    sprintf(paste0(
      "Con n = %d la muestra **supera** el umbral del 10%% ",
      "(n mínimo requerido: %d) con holgura."
    ), n_muestra, tamano_requerido(0.10, Z, p)),
    sprintf(paste0(
      "Con n = %d la muestra **no alcanza** el umbral del 10%% ",
      "(n mínimo requerido: %d); el tamaño se justifica como exploratorio/mixto."
    ), n_muestra, tamano_requerido(0.10, Z, p))
  ),
  "",
  "## Nota metodológica",
  "",
  "La variable \"frecuencia de uso\" no existe como tal en la encuesta cerrada.",
  "Se usó como aproximación la pregunta sobre frecuencia de inconvenientes en la",
  "atención/gestión de la clínica, por ser la columna de frecuencia más cercana",
  "disponible. Si el equipo define una variable de frecuencia de uso distinta,",
  "hay que actualizar `col_frecuencia` en este script y volver a ejecutarlo.",
  "",
  "## Privacidad",
  "",
  "Este reporte y el archivo `perfil_participantes_agregado.csv` contienen",
  "únicamente conteos agregados. No incluyen nombres ni ninguna otra columna",
  "que permita reidentificar a un participante individual."
)
writeLines(reporte, file.path(ruta_resultados, nombre_reporte), useBytes = TRUE)

cat("\nListo. Archivos generados en", ruta_resultados, ":\n")
cat(" - perfil_participantes_agregado.csv\n")
cat(" -", nombre_reporte, "\n")
