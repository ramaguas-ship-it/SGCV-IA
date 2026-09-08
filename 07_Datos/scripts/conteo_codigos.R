# ==============================================================================
# 07_Datos/scripts/conteo_codigos.R
# ------------------------------------------------------------------------------
# Cuenta codigos abiertos y codigos axiales por categoria, calculado a partir
# de las tablas de codificacion crudas de 02_Evidencias/Codificacion_Tematica/
# (NO copia los totales ya resumidos de ningun reporte o .md).
#
# Fuentes:
#   - codificacion_tematica_SGCV-IA.csv : un fragmento por fila = un codigo
#     abierto (167 filas). Usa 11 categorias FINAS.
#   - codificacion_axial_SGCV-IA.csv    : un codigo axial consolidado por
#     fila (50 filas), con la lista de participantes que lo evidencian.
#     Usa 7 categorias CONSOLIDADAS.
#
# Las categorias de ambas tablas no coinciden textualmente (ej. "Historia
# clinica" en la tabla abierta vs. "Historia clinica y gestion de pacientes"
# en la axial), porque la tabla axial agrupa varias categorias finas en una
# consolidada. El mapeo de abajo (mapeo_categorias) refleja esa
# consolidacion -- si el equipo de analisis (Marcillo) cambia el nombre de
# alguna categoria o crea una nueva, hay que actualizar este mapeo aqui.
#
# Requisitos: R base unicamente.
# Uso: Rscript 07_Datos/scripts/conteo_codigos.R
#      (ejecutar desde la raiz del repositorio)
# ==============================================================================

ruta_evidencias  <- "02_Evidencias/Codificacion_Tematica"
ruta_resultados  <- "07_Datos/resultados"

ruta_abierta <- file.path(ruta_evidencias, "codificacion_tematica_SGCV-IA.csv")
ruta_axial   <- file.path(ruta_evidencias, "codificacion_axial_SGCV-IA.csv")

if (!file.exists(ruta_abierta)) stop("No se encontro ", ruta_abierta)
if (!file.exists(ruta_axial))   stop("No se encontro ", ruta_axial)

abierta <- read.csv(ruta_abierta, encoding = "UTF-8", stringsAsFactors = FALSE)
axial   <- read.csv(ruta_axial,   encoding = "UTF-8", stringsAsFactors = FALSE)

# ------------------------------------------------------------------------------
# Mapeo de las 11 categorias finas (tabla abierta) a las 7 categorias
# consolidadas (tabla axial). Ver nota arriba.
# ------------------------------------------------------------------------------
mapeo_categorias <- c(
  "Historia clínica"        = "Historia clínica y gestión de pacientes",
  "Gestión de pacientes"    = "Historia clínica y gestión de pacientes",
  "Facturación"             = "Gestión administrativa y financiera",
  "Administración"          = "Gestión administrativa y financiera",
  "Inventario"              = "Inventario",
  "Citas"                   = "Citas y comunicación con propietarios",
  "Comunicación"            = "Citas y comunicación con propietarios",
  "Inteligencia Artificial" = "Inteligencia Artificial",
  "Usabilidad"              = "Usabilidad y desempeño",
  "Rendimiento"             = "Usabilidad y desempeño",
  "Seguridad"               = "Seguridad"
)

categorias_sin_mapeo <- setdiff(unique(abierta$Categoria), names(mapeo_categorias))
if (length(categorias_sin_mapeo) > 0) {
  stop(
    "Hay categorías en codificacion_tematica_SGCV-IA.csv que no están en el mapeo: ",
    paste(categorias_sin_mapeo, collapse = ", "),
    ". Actualiza `mapeo_categorias` en este script antes de continuar."
  )
}

abierta$categoria_consolidada <- mapeo_categorias[abierta$Categoria]

# ------------------------------------------------------------------------------
# Conteo de codigos abiertos por categoria consolidada
# (una fila de la tabla abierta = un codigo abierto/fragmento)
# ------------------------------------------------------------------------------
conteo_abiertos <- as.data.frame(table(abierta$categoria_consolidada), stringsAsFactors = FALSE)
names(conteo_abiertos) <- c("categoria", "codigos_abiertos")

# ------------------------------------------------------------------------------
# Conteo de codigos axiales por categoria
# (una fila de la tabla axial = un codigo axial ya consolidado)
# ------------------------------------------------------------------------------
conteo_axiales <- as.data.frame(table(axial$Categoria), stringsAsFactors = FALSE)
names(conteo_axiales) <- c("categoria", "codigos_axiales")

resumen <- merge(conteo_abiertos, conteo_axiales, by = "categoria", all = TRUE)
resumen[is.na(resumen)] <- 0
resumen <- resumen[order(-resumen$codigos_axiales), ]

total_abiertos <- sum(resumen$codigos_abiertos)
total_axiales  <- sum(resumen$codigos_axiales)
n_categorias   <- nrow(resumen)

cat("== Conteo de codigos por categoria (calculado desde los datos crudos) ==\n")
print(resumen, row.names = FALSE)
cat(sprintf(
  "\nTotal: %d codigos abiertos -> %d codigos axiales, en %d categorias\n",
  total_abiertos, total_axiales, n_categorias
))

# ------------------------------------------------------------------------------
# Guardar
# ------------------------------------------------------------------------------
if (!dir.exists(ruta_resultados)) dir.create(ruta_resultados, recursive = TRUE)
write.csv(
  resumen,
  file.path(ruta_resultados, "conteo_codigos_categorias.csv"),
  row.names = FALSE,
  fileEncoding = "UTF-8"
)

cat("\nGuardado en", file.path(ruta_resultados, "conteo_codigos_categorias.csv"), "\n")
