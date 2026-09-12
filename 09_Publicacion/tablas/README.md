# Tablas de publicación

Tablas en formato CSV usadas en el manuscrito (`09_Publicacion/manuscrito_final.tex`).
Ninguna cifra reportada en estas tablas está escrita a mano: todas provienen de scripts
versionados en `06_Experimento/scripts_analisis/` (orquestador `run_all.R`), ejecutados
sobre los datos crudos del proyecto.

## Contenido

| Archivo | Contenido |
|---|---|
| `codificacion_tematica_SGCV-IA.csv` | Codificación temática abierta de las entrevistas: fragmento, código, categoría, requisito derivado, evidencia y analista que codificó. |
| `tabla1_trabajo_relacionado.csv` | Estudios relacionados citados en el manuscrito: referencia, año, tipo de estudio, población, intervención, resultados principales y diferencia con este trabajo. |
| `tabla2_codigos_ia_frecuencias.csv` | Frecuencia de códigos relacionados con Inteligencia Artificial detectados en las entrevistas. |
| `tabla_01_saturacion_codigos_abiertos.csv` | Curva de saturación de códigos abiertos: códigos nuevos y acumulados por entrevista. Generada por `03_curva_saturacion_codigos_abiertos.R`. |
| `tabla_02_descriptivos_likert.csv` | Estadísticos descriptivos (n, media, mediana, desviación estándar, mínimo, máximo, IQR) de las preguntas tipo Likert de la encuesta, por perfil de participante. |
| `tabla_03_supuestos_shapiro.csv` | Prueba de normalidad de Shapiro-Wilk por pregunta y perfil. Generada por `05_supuestos.R`. |
| `tabla_04_supuestos_levene.csv` | Prueba de homogeneidad de varianzas de Levene por pregunta. Generada por `05_supuestos.R`. |
| `tabla_05_pruebas_hipotesis.csv` | Pruebas de hipótesis entre perfiles, con corrección de Holm para comparaciones múltiples. Generada por `06_pruebas_hipotesis.R`. |
| `tabla_06_tamano_efecto.csv` | Tamaño del efecto (delta de Cliff y d de Cohen, con IC 95%) entre perfiles. Generada por `07_tamano_efecto.R`. |
