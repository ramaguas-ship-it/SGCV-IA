# 09_Publicacion/

## Estado: FINALIZADO — actualizado 08/09/2026

Contenido sustantivo del manuscrito completo (Abstract, Introduction,
Related Work, Methodology, Results, Discussion, Threats to Validity,
Conclusions) y paquete de dataset (README_dataset.md, ANONYMIZATION.md,
ETHICS.md) completos, con datos reales verificados de la codificación
temática (167 códigos abiertos, 50 códigos axiales en 7 categorías,
16 entrevistas, saturación confirmada). Queda pendiente únicamente la
elección formal de revista/conferencia, notificada al docente (ver
sección correspondiente abajo).

Esta carpeta contiene el manuscrito final para la revista/conferencia
objetivo, según la Sección 5 de la Guía de Entrega 4 (2B).

## Estado por archivo/carpeta

| Archivo/carpeta | Contenido esperado | Estado |
|---|---|---|
| `manuscrito_final.tex` | Fuente LaTeX (plantilla sn-jnl, Springer Nature) | Compila sin errores (23 páginas). Abstract, Introduction, Related Work, Methodology, Results, Discussion, Threats to Validity y Conclusions redactados con datos reales de la codificación temática (16 entrevistas, 167 códigos abiertos, 50 códigos axiales en 7 categorías; saturación cerrada confirmada: 2.67% de códigos nuevos en las últimas 3 entrevistas, bajo el umbral del 5%). ORCID de los 6 autores completo. |
| `manuscrito_final.pdf` | PDF compilado desde `manuscrito_final.tex` | Generado |
| `title_page.tex` / `title_page.pdf` | Página de título con autoría, declaraciones (Funding, Competing Interests, Ethics, Consent, Author contributions, uso de IA) | Generado. Declaraciones completas: sin financiamiento, sin conflictos de interés declarados; aclaración sobre ausencia de número de aprobación ética individual (política uniforme del curso, no una omisión del proyecto); sección de uso de IA describe su rol real (apoyo de verificación y lenguaje, sin generación de contenido sustantivo). |
| `referencias.bib` | Mínimo 40 entradas verificadas (DOI válido, sin referencias inventadas) | 45 entradas — cumple el mínimo; 43 de las 45 citadas efectivamente en el texto. |
| `figuras/` | Figuras generadas por `scripts_analisis/`, no pegadas manualmente | `curva_saturacion_axial.pdf` generada por script, insertada en Results; distingue saturación a nivel de código abierto (no se cumple) y a nivel de código axial/cerrado (sí se cumple). |
| `tablas/` | Tablas generadas por `scripts_analisis/` | Tabla 1 (Trabajo Relacionado, 19 estudios) y Tabla 2 (frecuencias de códigos de explicabilidad IA) extraídas y verificadas como archivos CSV reproducibles (`tabla1_trabajo_relacionado.csv`, `tabla2_codigos_ia_frecuencias.csv`), ninguna cifra escrita a mano. Tabla 1 presentada en formato apaisado (`sidewaystable`) por su ancho. |
| `dataset_zenodo/README_dataset.md` | Diccionario de datos e instrucciones de citación | Completo en español, con DOI del depósito curado (`10.5281/zenodo.22558095`, CC BY 4.0, versión 2.0) y esquema de seudonimización tomado de `ANONYMIZATION.md`. |
| `dataset_zenodo/ANONYMIZATION.md` | Procedimiento de anonimización aplicado | Completo |
| `dataset_zenodo/ETHICS.md` | Resumen del proceso de consentimiento informado | Completo |

## Advertencia (Guía Sección 5, "Advertencia específica sobre integridad")

La sección de resultados y discusión NO pueden escribirse antes de que
existan los datos analizados. No se aceptan resultados hipotéticos ni
referencias generadas por IA sin verificar cada DOI.

**Nota:** Results, Discussion y Conclusions se redactaron y luego
corrigieron una vez verificada la codificación temática real (167
códigos abiertos, corrección del conteo axial de 47 a 50 tras
reclasificar los 167 códigos uno por uno contra las categorías
finales), en cumplimiento de esta advertencia. La corrección se
propagó a los archivos del repositorio que citaban el número anterior.
La validación cuantitativa terminal del Enfoque 3 (Rondas 1 y 2 sobre
el instrumento de Vera Gómez) no se ejecutó dentro del plazo del
proyecto; esta desviación del protocolo OSF está documentada
formalmente en `07_Datos/desviaciones.md` y referenciada en la
Sección 3.6b del manuscrito.

## Fiabilidad y verificación adicional

- **Doble codificación independiente (A7):** codificación cruzada
  entre dos codificadores sobre el 25% del corpus (P02, P07, P13, P16),
  con cálculo del coeficiente kappa de Cohen. Artefactos en
  `10_Autoria/doble_codificacion/`.
- **Declaración de uso de IA (A9):** documentada sección por sección
  en `10_Autoria/declaracion_uso_ia.md`, consistente con la sección de
  uso de IA del manuscrito y de `title_page.tex`.
- **Evaluación FAIR:** autoevaluación F-UJI ejecutada contra el DOI
  del depósito Zenodo curado; puntaje agregado 96.15% (25/26),
  documentada en `fair_assessment.pdf` (raíz del repositorio).

## Revista/conferencia objetivo

**[PENDIENTE — sin confirmación en este repositorio de que se haya
resuelto. Debe elegirse formalmente por el equipo y notificarse al
docente, según la Sección 2 de la guía, antes del inicio de semana 14.]**
El manuscrito actual usa la plantilla sn-jnl (Springer Nature,
sn-mathphys-num) como base de trabajo, pero esto no constituye por sí
solo una elección formal notificada.
