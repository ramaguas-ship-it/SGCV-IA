# Datos procesados

Esta carpeta contiene conjuntos derivados y documentados utilizados por la
cadena reproducible de `07_Datos/`. Ningún archivo de esta carpeta se edita
a mano: todos se generan corriendo los scripts indicados sobre los datos
crudos de `07_Datos/datos_crudos/`.

## Contenido actual

| Dato | Naturaleza | Generación / procedencia |
|---|---|---|
| `encuesta_procesada.csv` | Encuesta cerrada, ya parseada y estructurada (210 filas × 19 columnas) | Generado por `../scripts/importar_datos.R` desde `datos_crudos/encuesta_respuestas_crudas.csv` |
| `transcripciones_metadata.csv` | Metadatos de las 16 transcripciones de entrevista (ID, fecha, rol, número de palabras), sin el texto completo | Generado por `../scripts/importar_datos.R` desde `datos_crudos/Entrevistas/*.md` |
| `transcripciones_completas.rds` | Las 16 transcripciones completas, con metadatos y el texto íntegro de cada entrevista | Generado por `../scripts/importar_datos.R` desde `datos_crudos/Entrevistas/*.md` |

## Codificación temática

La codificación temática (fragmentos, códigos abiertos, códigos axiales y
categorías) **no vive en esta carpeta**: es un producto analítico humano,
elaborado por el equipo a partir de las transcripciones, y se documenta en
`02_Evidencias/Codificacion_Tematica/`. Esta carpeta solo contiene las
transformaciones automáticas que un script puede reproducir sin
intervención humana.

## Regla de reproducibilidad

Las transformaciones de esta carpeta deben poder regenerarse en cualquier
momento ejecutando, desde la raíz del repositorio:

```
Rscript 07_Datos/scripts/run_all.R
```

Ningún número ni tabla de esta carpeta se escribe a mano. Si los datos
crudos cambian (por ejemplo, si crece el número de respuestas de la
encuesta), basta con volver a correr el script para que esta carpeta quede
actualizada.

## Pendiente

Los datos ya limpios para el componente empírico de `06_Experimento/`
(`encuesta_limpia.csv`, `transcripciones_limpias.rds`, `reporte_limpieza.md`)
se depositan también aquí, generados por
`06_Experimento/scripts_analisis/02_limpieza.R`, para no duplicar datos
procesados en dos carpetas distintas del repositorio.
