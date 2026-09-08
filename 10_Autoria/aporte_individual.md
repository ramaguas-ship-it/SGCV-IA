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
| Declaración de uso de IA | `10_Autoria/declaracion_uso_ia.md` | Redacción de la declaración A9, sección por sección del manuscrito y de los artefactos de codificación; corrección de una versión de `manuscrito_final.tex`/`title_page.tex` que minimizaba incorrectamente el alcance real del uso de IA (atribuido erróneamente a otra herramienta), restaurando la declaración honesta y consistente con este documento. |
| `desviaciones.md` | `07_Datos/desviaciones.md` | Registro formal de la desviación real del protocolo OSF (componente de validación cuantitativa del Enfoque 3, Rondas 1 y 2, diseñado pero no ejecutado), con fecha, motivo y confirmación escrita de Vera Gómez. |
| Criterios de piso propios | Raíz del repositorio, `.git` | Eliminación de archivo de evidencia vacío (P3); verificación de etiqueta anotada `v2B` (P5); confirmación de `git config` con correo institucional propio en todos los commits (P4). |
| Doble codificación independiente (A7) | `10_Autoria/doble_codificacion/` | Cálculo del coeficiente kappa de Cohen entre la codificación propia y la de Mesías Quijije sobre P02, P07, P13, P16 (25% del corpus), por script reproducible; redacción de la interpretación, incluida la explicación de la paradoja del kappa (acuerdo bruto 89,3% vs. kappa 0,36) y el reconocimiento de la limitación del intervalo de confianza amplio por tamaño de muestra. |

### Identificadores de commit

Extraídos de `git log --author="amarcillop@uteq.edu.ec" --oneline` sobre el repositorio real.

| Artefacto | Commit(s) |
|---|---|
| Codificación temática abierta (P09–P16) | `47431e7` (subida), `977505c` (corrección de codificación de caracteres) |
| Codificación axial (167 → 50 códigos), `.csv` | `1e9db9b` (codificación temática cerrada en CSV) |
| Codificación axial, `.md` | `6d0caf8` |
| Corrección del recuento axial (47→50) | `0b281f8` (manuscrito y artefactos principales), `b436a40` (corrección espejo en `dataset_zenodo/`) |
| Limpieza de archivo duplicado obsoleto | `af1fe6f` (elimina `codificacion_tematica_SGCV-IA.md` duplicado en `02_Evidencias/Codificacion_Tematica/`, superado por el `.csv`) |
| Curva de saturación axial | `b2c6fde`, `6e64422` (versiones), `4b43b5e` (versión final corregida), `5153210`/`421e15b` (limpieza de versiones obsoletas) |
| Curva de saturación abierta (script, salida, figura) | `e7b93f6` (script R), `b06db6d` (tabla), `00d9197` (figura) |
| Matriz de trazabilidad (auditoría y cierre) | `3f13b96` (versión intermedia), `6f50448` (versión final cerrada) |
| Manuscrito final (versión inicial y correcciones) | `bfa16fd` (creación), `edf641d`/`dbcef9a`/`dceb210` (revisiones), `40d9f19` (DOI de Zenodo) |
| `title_page.tex` | `e446b5a`/`c1468cd` (revisiones), `72e894d` (DOI de Zenodo), `2a04550` (PDF) |
| Tabla 1 (Trabajo Relacionado) | `a4fa2d7` |
| Tabla 2 (frecuencias IA) | `774c64b` (versión inicial), `adfebb1` (corrección IA-3) |
| `referencias.bib` | `d03a5de` |
| `CITATION.cff` | `0e5708e` (actualización general), `157e06a` (DOI de Zenodo) |
| `README_dataset.md` | `38efb8a` (creación), `d229d22`/`60cfc94`/`6ea7a75` (revisiones) |
| `ANONYMIZATION.md` | `b7faf0a` (creación), `d442af6` (revisión) |
| `ETHICS.md` | `66efc60` (creación), `aea2801` (revisión) |
| Evaluación F-UJI (`fair_assessment.pdf`) | `6773258` |
| Declaración de uso de IA (A9) | `3e88348` |
| `desviaciones.md` | `90ad44d` |
| Doble codificación independiente (A7) | `61764b7`/`cb07b6d` (hoja propia), `374a5b2` (hoja de Mesías), `bbe0054` (script), `c918dab` (resultado), `b5ffe1c` (interpretación) |
| Eliminación de archivo de evidencia vacío (criterio de piso P3) | `805af02` (Delete 07_Publicacion/Provisionar) |
| `aporte_individual.md` (este documento) | `20801de`, `9409e12`, `a05a7c7` |

**Nota:** varios artefactos muestran más de un commit porque se subieron, corrigieron y volvieron a subir a lo largo del proceso (por ejemplo, la corrección del recuento axial de 47 a 50 obligó a resubir varios archivos). Se listan todos para trazabilidad completa, no solo el último.

### Firma

Alberto Jeanpool Marcillo Ponce — Fecha: 07-09-2026

---

## Robyn Willian Amagua Sacón


### Responsabilidad asignada en el reparto de trabajo

Documentador — Responsable de C7 (Recolección de datos de campo), según `06_Experimento/README.md`. En la práctica, el historial de commits muestra que además actuó como integrador/mantenedor del repositorio: estructura de carpetas, unificación de identidades de commit, evidencia restringida, corrección de inconsistencias transversales (trazabilidad, priorización, DOI, README) y cierre de la Entrega 4.

> Esta responsabilidad está tomada del README del proyecto, no de una declaración propia de Amagua Sacón. Debe confirmarla o corregirla él mismo antes de firmar.

### Artefactos de los que es responsable (constatado en esta revisión)

| Artefacto | Ruta | Descripción del aporte |
|---|---|---|
| Estructura del repositorio (`07_Datos`, `10_Autoria`) | Raíz del repositorio | Creación de las carpetas `07_Datos/` y `10_Autoria/`, renumeración de `Publicacion/`→`09_Publicacion/` y `Defensa/`→`11_Defensa/`, y reorganización de las 16 transcripciones y la encuesta cruda hacia su ubicación final en `07_Datos/datos_crudos/` (subidas originalmente por Barrionuevo Fuentes en `06_Experimento/datos_crudos/`; ver sección de Barrionuevo). Población de plantillas iniciales de `07_Datos` y `10_Autoria` (`LICENSE-DATA.txt`, `desviaciones.md`, `registro_deposito.md`, `bitacora_sesiones.csv`, `declaracion_uso_ia.md`, `exif_inventario.csv`, este mismo documento). |
| `.mailmap` (unificación de identidades) | `.mailmap` | Creación y ampliación del archivo que unifica los distintos usuarios/correos de GitHub de cada integrante (p. ej. Vera Gómez y Mesías Quijije aparecían con más de una identidad) bajo un nombre canónico, para que `git log --use-mailmap` sea confiable como evidencia de A10. |
| Evidencia restringida cifrada (consentimientos y audios P01–P16) | `02_Evidencias/00_Restringido/` | Empaquetado y subida de los consentimientos (`evidencias_consentimientos_P01aP16.7z`) y los audios (`evidencias_audio_P01aP16.7z.00x`) de las 16 entrevistas, cifrados, con sus checksums SHA-256. (La evidencia cifrada de las grabaciones de walkthrough fue subida aparte por Mesías Quijije; ver su sección). |
| Anonimización de evidencia | `02_Evidencias/fichas_tecnicas.csv`, `02_Evidencias/checksums_originales.txt` | Eliminación de filas duplicadas con nombres reales de participantes en `fichas_tecnicas.csv`; sustitución de nombres reales por códigos de participante (P01–P16) en `checksums_originales.txt`. |
| Corrección de priorización MoSCoW/Kano | `04_Trazabilidad/priorizacion_moscow_kano_valor.csv` | Corrigió el intercambio de valores entre RF-09 y RF-18, que estaban invertidos. |
| Presentación final de defensa | `11_Defensa/presentacion.pdf`, `presentacion.pptx`, `guion.md` | Subida de las diapositivas (PDF y PPTX) y el guion de la defensa final. |
| Actualización del ERS | `01_ERS/ERS_SRS_2B_v2.0.tex`/`.pdf` | Actualización del documento ERS/SRS para la Entrega 4 (2B); regeneración del PDF final desde Overleaf; nueva imagen de portada (`01_ERS/media/imagen_repositorio.png`). |
| Aclaración de roles y del identificador OSF | `06_Experimento/README.md` | Revisó y dejó explícita la tabla de roles del equipo; detectó y resolvió una inconsistencia entre dos identificadores de OSF distintos (`r5p8d` y `wkg32`) que convivían en varios documentos del repositorio, unificando todos a `r5p8d` y dejando una nota de que esa unificación fue por consistencia interna, no por verificación directa contra el sitio de OSF (su contenido se renderiza por JavaScript y no es accesible por una petición simple). |
| Licenciamiento | `LICENSE`, `07_Datos/LICENSE-DATA.txt` | Revisión y ampliación de los términos de licenciamiento y de la sección del paquete de datos. |
| Checksums reproducibles de la raíz del repositorio | `checksums.sha256`, `scripts/generar_checksums_raiz.sh` | Regeneración de `checksums.sha256` con cobertura completa y script para reproducir el cálculo. |
| Limpieza de archivos de evidencia obsoletos/duplicados | Varias rutas (`02_Evidencias/`, `09_Defensa/` antiguo) | Eliminación de un archivo de evidencia vacío (`Provisionar`) y de un `checksums_originales.txt` obsoleto; eliminación de la carpeta `09_Defensa/` antigua (presentación, guion y video duplicados) tras la renumeración a `11_Defensa/`. |

**[PENDIENTE — Amagua Sacón: confirmar o corregir los tres puntos señalados en la Nota de verificación cruzada al final del documento, completar su responsabilidad asignada, y agregar cualquier otro artefacto de su autoría no listado aquí.]**

### Identificadores de commit

Extraídos de `git log --author="ramaguas@uteq.edu.ec"` sobre el repositorio real (`https://github.com/ramaguas-ship-it/SGCV-IA`).

| Artefacto | Commit(s) |
|---|---|
| Estructura del repositorio y reorganización de datos | `563b0fa` (crear carpetas y mover datos), `d1b4780` (poblar plantillas) |
| `.mailmap` | `5be985c` (creación), `3bfff36` (ampliación), `3ffd8d4` (corrección correo institucional de Mesías) |
| Evidencia restringida (consentimientos, audios) | `156f4b4` (consentimientos), `076708c` (audios) |
| Anonimización de evidencia | `d878fd7` (checksums_originales), `a34e338` (fichas_tecnicas) |
| Corrección RF-09/RF-18 en priorización | `009009c` |
| Presentación final | `94a9ea8` (PDF), `67c43c0` (PPTX), `065c139` (guion.md) |
| ERS actualizado | `34c612c`, `f9a6dcf` (referencias.bib — entrada agregada), `bb65ae5` (imagen), `1c1a137` (PDF de Overleaf) |
| README — roles e identificador OSF | `fabd443`, `fc28229` |
| Licenciamiento | `0410148`, `29d48d5` |
| Checksums de la raíz | `d5118ad` |
| Corrección de nombre de carpeta + checksums | `d9694c6` |
| Limpieza de evidencia obsoleta/duplicada | `05f45b3`, `20be7a8`, `ab852f8`, `188f0d9`, `4c7420d`, `0bd4800` |

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

| Artefacto | Ruta | Descripción del aporte |
|---|---|---|
| Doble codificación independiente (A7) | `10_Autoria/doble_codificacion/hoja_codificador2_Mesias.csv` | Codificación independiente de 4 entrevistas (P02, P07, P13, P16 — 25% del corpus), sin acceso previo a la codificación original, para el cálculo del coeficiente de acuerdo entre codificadores (kappa de Cohen = 0,36, IC 95% [-0,32, 1,04]). |

**[PENDIENTE — Mesías Quijije: completar con el resto de sus artefactos e identificadores de commit. Referencia conocida: catálogo de RF/RNF del ERS (RF-01 a RF-25, RNF-01 a RNF-15).]**

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
