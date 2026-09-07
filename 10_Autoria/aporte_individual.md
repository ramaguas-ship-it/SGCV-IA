# A10 — Aporte individual por integrante

Proyecto SGCV-IA — Entrega 4 (2B). Documento de cumplimiento obligatorio conforme a la Guía de Desarrollo (Sección 6, ítem A10). Debe estar firmado por los cinco integrantes; cada quien completa y valida su propia sección.

---

## Alberto Jeanpool Marcillo Ponce (Analista Líder)

### Responsabilidad asignada en el reparto de trabajo

Analista Líder — codificación temática y saturación (C5/C6), verificación de la matriz de trazabilidad (C2), depósito Zenodo curado, evaluación F-UJI, defensa final.

### Artefactos de los que es responsable

| Artefacto | Ruta | Descripción del aporte |
|---|---|---|
| Codificación temática abierta (P09–P16) | `02_Evidencias/Codificacion_Tematica/codificacion_tematica_SGCV-IA.csv` | Codificación de las 8 entrevistas restantes (89 códigos abiertos nuevos), completando el corpus de 16 entrevistas a 167 códigos abiertos totales. |
| Codificación axial (167 → 50 códigos) | `02_Evidencias/Codificacion_Tematica/codificacion_axial_SGCV-IA.csv` y `.md` | Consolidación de los 167 códigos abiertos en códigos axiales agrupados en 7 categorías. Primera consolidación: 47 códigos. Tras reclasificar los 167 códigos uno por uno contra las categorías finales, se corrigió a 50 códigos axiales (errores de conteo detectados en Inteligencia Artificial, Usabilidad y desempeño, Historia clínica y Seguridad); corrección propagada a los 13 archivos del repositorio que citaban el número anterior. |
| Curva de saturación (nivel abierto y axial) | `02_Evidencias/Codificacion_Tematica/`, `09_Publicacion/figuras/curva_saturacion_axial.pdf` | Distinción metodológica entre saturación a nivel de código abierto (no se cumple) y a nivel de código cerrado/axial (sí se cumple, Hennink et al. 2017); cálculo y figura de ambas curvas por script; recálculo completo tras la corrección de 47 a 50 códigos (saturación final: 2.67% en las últimas 3 entrevistas, bajo el umbral del 5%). |
| Auditoría de la matriz de trazabilidad | `04_Trazabilidad/matriz_trazabilidad.csv` | Identificación de filas con campos de trazabilidad incompletos (EV, HU, CA); verificación posterior de las correcciones y aclaraciones aplicadas por Amagua Sacón hasta el cierre completo de las 63 filas, incluyendo la verificación del criterio real de la columna EV contra las Secciones 8.1 y 9.2 del ERS. |
| Manuscrito final | `09_Publicacion/manuscrito_final.tex` | Corrección de una versión anterior que contenía códigos y frecuencias fabricados (E1–E9, D5, D6, G1–G3) y una afirmación de saturación no sostenida por los datos; reescritura de Resumen, Trabajo Relacionado (protocolo de búsqueda real, ejecutado y documentado, con tabla de 19 estudios verificados), Metodología (Propositions, desviaciones del protocolo OSF), Resultados, Discusión, Conclusiones, autoría (ORCID), disponibilidad de datos y uso de IA. Corrección posterior de la frecuencia de IA-3 (6/16 → 4/16) y del total de estudios en Trabajo Relacionado (18 → 19) tras verificación adicional. Actualización del DOI de Zenodo tras el depósito curado. |
| `title_page.tex` | `09_Publicacion/title_page.tex` | Corrección de ORCID de los 6 autores, typo en el correo de correspondencia, inserción del resumen final, declaración de financiamiento (ninguno) y conflictos de interés (ninguno declarado), aclaración sobre ausencia de número de aprobación ética individual (política uniforme del curso), corrección de la sección de uso de IA, actualización del DOI de Zenodo. |
| Tablas de resultados | `09_Publicacion/tablas/tabla1_trabajo_relacionado.csv`, `tabla2_codigos_ia_frecuencias.csv` | Extracción y verificación independiente de las tablas del manuscrito como archivos CSV reproducibles, para cumplir la regla de que ninguna cifra publicada se escriba a mano. |
| Bibliografía | `09_Publicacion/referencias.bib` | Verificación de las entradas existentes contra las citas del manuscrito; incorporación de 4 entradas nuevas (Köhl et al. 2019, Habiba et al. 2022, Obaidi et al. 2025, Xiao et al. 2026) con verificación de DOI/identificador arXiv antes de citarlas; ampliación de citas efectivas en el texto de 30 a 43 de 45 entradas. |
| Metadatos de citación | `CITATION.cff` | Corrección de versión, fecha, ORCID de los 6 autores; actualización del campo `doi` tras la creación del depósito Zenodo curado. |
| Documentación del paquete de datos | `09_Publicacion/dataset_zenodo/README_dataset.md`, `ANONYMIZATION.md`, `ETHICS.md` | Redacción completa a partir de los procedimientos reales ya aplicados por el equipo (esquema de seudonimización P01–P16, proceso de consentimiento del `Guion_Entrevista_v2_0`). |
| Depósito Zenodo curado | Registro Zenodo `10.5281/zenodo.22558095` | Definición de metadatos del depósito curado en CC BY 4.0 (título, tipo de recurso, los 6 autores con ORCID, licencia, versión 2.0, palabras clave, identificadores relacionados con el registro OSF, enlace al repositorio), reemplazando el depósito automático previo en MIT. |
| Evaluación FAIR | `fair_assessment.pdf` (raíz del repositorio) | Ejecución de la autoevaluación F-UJI contra el DOI del depósito curado; puntaje agregado 96.15% (25/26), muy por encima del mínimo del 60% exigido. |
| Declaración de uso de IA | `10_Autoria/declaracion_uso_ia.md` | Redacción de la declaración A9 de uso de IA, sección por sección del manuscrito y de los artefactos de codificación, dejando constancia de que la IA se utilizó únicamente como apoyo de verificación y mejora de lenguaje: (i) revisión de consistencia, claridad y redacción de texto ya elaborado por los autores; (ii) verificación de datos bibliográficos y otros datos factuales contra las fuentes usadas por los autores; y (iii) sugerencias de mejora de gramática, ortografía, estilo y claridad. La IA no se utilizó para generar contenido sustantivo (datos de investigación, códigos temáticos, categorías, análisis, resultados, metodología, interpretaciones, conclusiones, tablas, figuras o decisiones de investigación). |
| `desviaciones.md` | `07_Datos/desviaciones.md` | Registro formal de la desviación real del protocolo OSF (componente de validación cuantitativa del Enfoque 3, Rondas 1 y 2, diseñado pero no ejecutado), con fecha, motivo y confirmación escrita de Vera Gómez. |
| Criterios de piso propios | Raíz del repositorio, `.git` | Eliminación de archivo de evidencia vacío (P3); verificación de etiqueta anotada `v2B` (P5); confirmación de `git config` con correo institucional propio en todos los commits (P4). |

### Identificadores de commit

**[PENDIENTE — completar con los hashes de commit reales una vez subidos los artefactos anteriores al repositorio; no se completa con hashes de ejemplo.]**

### Firma

Alberto Jeanpool Marcillo Ponce — Fecha: ______________

---

## Robyn Willian Amagua Sacón

### Responsabilidad asignada en el reparto de trabajo

**[PENDIENTE — completar por Amagua Sacón.]**

### Artefactos de los que es responsable (constatado en esta revisión)

| Artefacto | Ruta | Descripción del aporte |
|---|---|---|
| Corrección de la matriz de trazabilidad | `04_Trazabilidad/matriz_trazabilidad.csv` | Completó las 7 filas de RF sin HU/CA; explicó por escrito y con referencia a las Secciones 8.1 y 9.2 del ERS el criterio real de la columna EV para los RNF/RST de origen documental, legal o derivado de otros requisitos. |
| Corrección de codificación de caracteres | `02_Evidencias/Codificacion_Tematica/codificacion_tematica_SGCV-IA.csv` | Detectó y corrigió un problema de doble codificación UTF-8 en el CSV de codificación temática. |
| Script de curva de saturación (nivel abierto) | `06_Experimento/scripts_analisis/03_curva_saturacion_codigos_abiertos.R` | Script reproducible que calcula la curva de saturación a nivel de código abierto directamente desde el CSV crudo. |

**[PENDIENTE — Amagua Sacón: completar cualquier otro artefacto de su responsabilidad no listado aquí, con sus identificadores de commit.]**

### Firma

Robyn Willian Amagua Sacón — Fecha: ______________

---

## Anthony Alfredo Vera Gómez

### Responsabilidad asignada en el reparto de trabajo

Responsable del componente empírico del Enfoque 3 (explicabilidad): protocolo experimental, registro OSF, instrumento de validación.

### Artefactos de los que es responsable (constatado en esta revisión)

| Artefacto | Ruta | Descripción del aporte |
|---|---|---|
| Protocolo experimental | `06_Experimento/Protocolo_SGCV-IA_2A.pdf` | Diseño del componente empírico del Enfoque 3: preguntas de investigación (PICOC), proposiciones, variables, plan de análisis. |
| Registro OSF | `06_Experimento/OSF_Registration.pdf` | Registro previo del protocolo en OSF (1 de agosto de 2026), antes de la recolección de datos de la ronda terminal. |
| Guion de validación v2.0 | `06_Experimento/instrumentos/Guion_Validacion_v2_0.pdf` | Diseño del instrumento de validación en dos rondas (estímulo simulado, escalas Likert, checklist de cobertura del marco de Chazette). |
| Confirmación de desviación del protocolo | Comunicación escrita, incorporada en `07_Publicacion/manuscrito_final.tex` (Sección 3.6b) | Confirmó por escrito que las Rondas 1 y 2 de validación no se ejecutaron dentro del plazo del proyecto, permitiendo documentar la desviación real en el manuscrito en lugar de dejarla sin resolver. |

**[PENDIENTE — Vera Gómez: completar identificadores de commit y cualquier otro artefacto de su responsabilidad.]**

### Firma

Anthony Alfredo Vera Gómez — Fecha: ______________

---

## Jhon Alexander Mesías Quijije

### Responsabilidad asignada en el reparto de trabajo

**[PENDIENTE — completar por Mesías Quijije.]**

### Artefactos de los que es responsable

**[PENDIENTE — Mesías Quijije: completar con sus artefactos e identificadores de commit. Referencia conocida: catálogo de RF/RNF del ERS (RF-01 a RF-25, RNF-01 a RNF-15).]**

### Firma

Jhon Alexander Mesías Quijije — Fecha: ______________

---

## Carlos Daniel Barrionuevo Fuentes

### Responsabilidad asignada en el reparto de trabajo

**[PENDIENTE — completar por Barrionuevo Fuentes.]**

### Artefactos de los que es responsable

**[PENDIENTE — Barrionuevo Fuentes: completar con sus artefactos e identificadores de commit.]**

### Firma

Carlos Daniel Barrionuevo Fuentes — Fecha: ______________

---

## Nota sobre completitud de este documento

Las secciones marcadas `[PENDIENTE]` no deben eliminarse ni completarse con información no verificada. Cada integrante es responsable de completar y firmar su propia sección antes del corte de la Entrega 4. Un documento con firmas pero sin contenido verificable no satisface el criterio P7/A10 de la Guía de Desarrollo.
