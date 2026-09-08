# ==============================================================================
# 07_Datos/scripts/importar_datos.R
# ------------------------------------------------------------------------------
# Importa las dos fuentes de datos crudos del proyecto SGCV-IA:
#   1) La encuesta cerrada (07_Datos/datos_crudos/encuesta_respuestas_crudas.csv)
#   2) Las transcripciones de entrevistas (07_Datos/datos_crudos/Entrevistas/*.md)
#
# Y las deja limpias y estructuradas en 07_Datos/resultados/, listas para que
# los siguientes scripts del pipeline (conteo de códigos, curva de saturación,
# justificación de n=60) las usen sin tener que volver a parsear texto crudo.
#
# IMPORTANTE: este script NUNCA escribe ni modifica nada dentro de
# 07_Datos/datos_crudos/ — solo lee de ahí. Toda su salida va a
# 07_Datos/resultados/.
#
# Requisitos: R base únicamente (no usa librerías externas), para que
# cualquiera del equipo pueda correrlo sin instalar paquetes adicionales.
#
# Uso:
#   Rscript 07_Datos/scripts/importar_datos.R
#   (ejecutar desde la raíz del repositorio, o ajustar `ruta_base` abajo)
# ==============================================================================

# ------------------------------------------------------------------------------
# 0. Configuración de rutas
# ------------------------------------------------------------------------------
ruta_base        <- "07_Datos"
ruta_crudos      <- file.path(ruta_base, "datos_crudos")
ruta_encuesta    <- file.path(ruta_crudos, "encuesta_respuestas_crudas.csv")
ruta_entrevistas <- file.path(ruta_crudos, "Entrevistas")
ruta_resultados  <- file.path(ruta_base, "resultados")

if (!dir.exists(ruta_resultados)) {
  dir.create(ruta_resultados, recursive = TRUE)
  cat("Carpeta creada:", ruta_resultados, "\n")
}

# ------------------------------------------------------------------------------
# 1. Importar la encuesta cerrada
# ------------------------------------------------------------------------------
importar_encuesta <- function(ruta_csv) {
  if (!file.exists(ruta_csv)) {
    stop("No se encontró el archivo de encuesta en: ", ruta_csv)
  }

  datos <- read.csv(
    ruta_csv,
    encoding = "UTF-8",
    stringsAsFactors = FALSE,
    check.names = FALSE  # conservamos los nombres de columna originales (con tildes y signos)
  )

  # Guardamos los nombres originales como atributo, por si luego se necesitan
  # para trazabilidad hacia el diccionario de datos.
  attr(datos, "nombres_originales") <- names(datos)

  datos
}

# ------------------------------------------------------------------------------
# 2. Importar las transcripciones de entrevistas
# ------------------------------------------------------------------------------

# Extrae un metadato tipo "Rol: Veterinario" o "**Rol:** Veterinario/a (...)",
# sin importar si tiene asteriscos de Markdown alrededor. Ancla la búsqueda al
# inicio de línea para no confundirse con palabras que contengan la etiqueta
# como substring (p. ej. "control" contiene "rol").
extraer_metadato <- function(texto, etiqueta) {
  patron <- paste0("(?im)^\\**", etiqueta, "\\**:?\\**\\s*(.+)$")
  m <- regexec(patron, texto, perl = TRUE)
  res <- regmatches(texto, m)[[1]]
  if (length(res) < 2) return(NA_character_)
  trimws(res[2])
}

# Extrae el cuerpo real de la entrevista: todo lo que viene después de la
# línea "Transcripción" o "## Transcripción".
extraer_cuerpo <- function(texto) {
  patron <- "(?im)^\\s*#{0,2}\\s*Transcripci[oó]n\\s*$"
  m <- regexpr(patron, texto, perl = TRUE)
  if (m[1] == -1) return(NA_character_)
  inicio <- m[1] + attr(m, "match.length")
  trimws(substr(texto, inicio, nchar(texto)))
}

importar_transcripciones <- function(ruta_dir) {
  if (!dir.exists(ruta_dir)) {
    stop("No se encontró la carpeta de entrevistas en: ", ruta_dir)
  }

  archivos <- list.files(ruta_dir, pattern = "Transcripcion.*\\.md$", full.names = TRUE)
  if (length(archivos) == 0) {
    stop("No se encontraron archivos .md de transcripción en: ", ruta_dir)
  }

  filas <- lapply(archivos, function(archivo) {
    texto <- paste(readLines(archivo, encoding = "UTF-8", warn = FALSE), collapse = "\n")

    id_match  <- regexpr("P[0-9]+", basename(archivo))
    id_participante <- if (id_match[1] == -1) NA_character_ else regmatches(basename(archivo), id_match)

    fecha_match <- regexpr("[0-9]{4}-[0-9]{2}-[0-9]{2}", basename(archivo))
    fecha_archivo <- if (fecha_match[1] == -1) NA_character_ else regmatches(basename(archivo), fecha_match)

    rol    <- extraer_metadato(texto, "Rol")
    cuerpo <- extraer_cuerpo(texto)
    n_palabras <- if (is.na(cuerpo)) NA_integer_ else length(strsplit(cuerpo, "\\s+")[[1]])

    data.frame(
      id_participante          = id_participante,
      archivo                  = basename(archivo),
      fecha_sesion             = fecha_archivo,
      rol                      = rol,
      n_palabras_transcripcion = n_palabras,
      texto_transcripcion      = cuerpo,
      stringsAsFactors = FALSE
    )
  })

  resultado <- do.call(rbind, filas)
  resultado[order(resultado$id_participante), ]
}

# ------------------------------------------------------------------------------
# 3. Ejecutar la importación
# ------------------------------------------------------------------------------
cat("== Importando encuesta ==\n")
encuesta <- importar_encuesta(ruta_encuesta)
cat(sprintf(" -> %d respuestas, %d columnas\n", nrow(encuesta), ncol(encuesta)))

cat("== Importando transcripciones ==\n")
transcripciones <- importar_transcripciones(ruta_entrevistas)
cat(sprintf(
  " -> %d transcripciones importadas (%s)\n",
  nrow(transcripciones),
  paste(transcripciones$id_participante, collapse = ", ")
))

faltantes_rol <- transcripciones$id_participante[is.na(transcripciones$rol)]
if (length(faltantes_rol) > 0) {
  warning("Sin metadato de Rol detectado en: ", paste(faltantes_rol, collapse = ", "))
}

# ------------------------------------------------------------------------------
# 4. Guardar resultados
# ------------------------------------------------------------------------------
# Encuesta procesada completa (incluye la columna con nombres de participantes;
# el script de perfil agregado / n=60 es responsable de quitarla antes de
# publicar cualquier tabla, para no permitir reidentificación).
write.csv(
  encuesta,
  file.path(ruta_resultados, "encuesta_procesada.csv"),
  row.names = FALSE,
  fileEncoding = "UTF-8"
)

# Metadata de transcripciones sin el texto completo (para revisión rápida)
write.csv(
  transcripciones[, setdiff(names(transcripciones), "texto_transcripcion")],
  file.path(ruta_resultados, "transcripciones_metadata.csv"),
  row.names = FALSE,
  fileEncoding = "UTF-8"
)

# Transcripciones completas (con texto) en RDS, para que los scripts de
# conteo de códigos y curva de saturación las lean directamente sin volver
# a parsear los .md
saveRDS(transcripciones, file.path(ruta_resultados, "transcripciones_completas.rds"))

cat("\nListo. Archivos generados en", ruta_resultados, ":\n")
cat(" - encuesta_procesada.csv\n")
cat(" - transcripciones_metadata.csv\n")
cat(" - transcripciones_completas.rds\n")
