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

## Robyn Willian Amagua Sacón (Responsable C7 — Recolección de datos de campo / Integrador del repositorio)

### Responsabilidad asignada en el reparto de trabajo

Responsable de C7 (Recolección de datos de campo), según `06_Experimento/README.md`. En la práctica, el historial de commits muestra que además actuó como integrador/mantenedor del repositorio: estructura de carpetas, unificación de identidades de commit, evidencia restringida, corrección de inconsistencias transversales (trazabilidad, priorización, DOI, README) y cierre de la Entrega 4.

> Esta responsabilidad está tomada del README del proyecto, no de una declaración propia de Amagua Sacón. Debe confirmarla o corregirla él mismo antes de firmar.

### Artefactos de los que es responsable (constatado en esta revisión)

| Artefacto | Ruta | Descripción del aporte |
|---|---|---|
| Estructura del repositorio (`07_Datos`, `10_Autoria`) | Raíz del repositorio | Creación de las carpetas `07_Datos/` y `10_Autoria/`, renumeración de `Publicacion/`→`09_Publicacion/` y `Defensa/`→`11_Defensa/`, y reorganización de las 16 transcripciones y la encuesta cruda hacia su ubicación final en `07_Datos/datos_crudos/` (subidas originalmente por Barrionuevo Fuentes en `06_Experimento/datos_crudos/`; ver sección de Barrionuevo). Población de plantillas iniciales de `07_Datos` y `10_Autoria` (`LICENSE-DATA.txt`, `desviaciones.md`, `registro_deposito.md`, `bitacora_sesiones.csv`, `declaracion_uso_ia.md`, `exif_inventario.csv`, este mismo documento). |
| `.mailmap` (unificación de identidades) | `.mailmap` | Creación y ampliación del archivo que unifica los distintos usuarios/correos de GitHub de cada integrante (p. ej. Vera Gómez y Mesías Quijije aparecían con más de una identidad) bajo un nombre canónico, para que `git log --use-mailmap` sea confiable como evidencia de A10. |
| Evidencia restringida cifrada (consentimientos y audios P01–P16) | `02_Evidencias/00_Restringido/` | Empaquetado y subida de los consentimientos (`evidencias_consentimientos_P01aP16.7z`) y los audios (`evidencias_audio_P01aP16.7z.00x`) de las 16 entrevistas, cifrados, con sus checksums SHA-256. (La evidencia cifrada de las grabaciones de walkthrough fue subida aparte por Mesías Quijije; ver su sección). |
| Anonimización de evidencia | `02_Evidencias/fichas_tecnicas.csv`, `02_Evidencias/checksums_originales.txt` | Eliminación de filas duplicadas con nombres reales de participantes en `fichas_tecnicas.csv`; sustitución de nombres reales por códigos de participante (P01–P16) en `checksums_originales.txt`. |
| Corrección de priorización MoSCoW/Kano | `04_Trazabilidad/priorizacion_moscow_kano_valor.csv` | Corrigió el intercambio de valores entre RF-09 y RF-18, que estaban invertidos. |
| Actualización real del DOI de Zenodo | `09_Publicacion/manuscrito_final.tex`, `09_Publicacion/title_page.tex`, `CITATION.cff` | Reemplazó el DOI del depósito automático (`10.5281/zenodo.22238486`) por el DOI del paquete curado en CC BY 4.0 (`10.5281/zenodo.22558095`) en los tres archivos, y eliminó el comentario `PENDIENTE` que quedaba en `CITATION.cff`. **Nota de verificación:** el manuscrito y el `title_page.tex` de Alberto Marcillo citan los commits `40d9f19` y `72e894d` para esta misma corrección, pero esos dos commits no modifican ningún archivo (ver Nota de verificación cruzada al final del documento); el cambio real está en los commits de esta fila. |
| Evaluación FAIR (`fair_assessment.pdf`) | `fair_assessment.pdf` (raíz del repositorio) | Subida del reporte de autoevaluación F-UJI (96.15%, 25/26) contra el DOI del depósito curado; corrección posterior de una corrupción de bytes CR introducida por `autocrlf` de Windows y normalización de saltos de línea (LF) vía `.gitattributes` para que los checksums sean reproducibles entre sistemas operativos. **Nota de verificación:** el commit `6773258`, citado por Alberto Marcillo para este mismo artefacto, no modifica ningún archivo; la subida real es la de esta fila. |
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
| DOI de Zenodo (manuscrito) | `5c7b5da` |
| DOI de Zenodo (title_page) | `4927b8d` |
| DOI de Zenodo (CITATION.cff) | `aa64266` |
| `fair_assessment.pdf` | `d11b997` (subida), `88b1a90` (normalización LF), `d44def8` (restauración de bytes) |
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

## Anthony Alfredo Vera Gómez (Responsable C8/C9 — Prototipo funcional MVP y Protocolo experimental)

### Responsabilidad asignada en el reparto de trabajo

Según `06_Experimento/README.md`: responsable de C8 (Prototipo funcional MVP) y C9 (Protocolo experimental). Esto coincide con lo ya escrito para él (componente empírico del Enfoque 3) y con el volumen real de commits, que está dominado por el modelado UML y el prototipo, no por el protocolo en sí.

### Artefactos de los que es responsable (constatado en esta revisión)

| Artefacto | Ruta | Descripción del aporte |
|---|---|---|
| Protocolo experimental | `06_Experimento/Protocolo_SGCV-IA_2A.pdf` | Diseño del componente empírico del Enfoque 3: preguntas de investigación (PICOC), proposiciones, variables, plan de análisis. |
| Registro OSF | `06_Experimento/OSF_Registration.pdf` | Registro previo del protocolo en OSF (1 de agosto de 2026), antes de la recolección de datos de la ronda terminal. |
| Confirmación de desviación del protocolo | Comunicación escrita, incorporada en `09_Publicacion/manuscrito_final.tex` (Sección 3.6b) | Confirmó por escrito que las Rondas 1 y 2 de validación no se ejecutaron dentro del plazo del proyecto, permitiendo documentar la desviación real en el manuscrito en lugar de dejarla sin resolver. |
| Diagramas de casos de uso (CU01–CU10) | `03_Modelado/Diagramas_UML/CU01_Login/` … `CU10_Billing_Collection/` (`.drawio`, `.svg`, `.png`) | Elaboración completa de los 10 diagramas de casos de uso del sistema (login, atención clínica, historial, inventario, empleados, IA, seguimiento nutricional, comunicación con cliente, centro de notificaciones, facturación/cobro), incluida una segunda pasada de renombrado a nomenclatura bilingüe consistente (`CU0X_Nombre_En_Ingles`). |
| Diagramas de secuencia | `03_Modelado/Diagramas_UML/DIAGRAM_SEQUENCE_BILLING`, `..._CLINICAL_CARE`, `..._REMINDER` | Diagramas de secuencia de facturación, atención clínica y recordatorios (versiones `.drawio`, `.svg`, `.png`). |
| Diagrama de clases refinado, componente y despliegue | `03_Modelado/Diagramas_UML/DIAGRAM_CLASS_REFINED_v3.1.*`, `Component_Diagram.*`, `Deployment_Diagram.*` | Versión 3.1 del diagrama de clases refinado; diagramas de componente y de despliegue. |
| Diagramas de estado | `03_Modelado/Diagramas_UML/Medical_Appointment_Status_Diagram.*`, `Product_State_Diagram.*` | Diagramas de estado de cita médica y de producto/inventario. |
| Mockups de interfaz (MU-001 a MU-033) | `03_Modelado/Mockups/` | Serie completa de mockups de pantallas del sistema (login, dashboard, pacientes, consultas, sugerencia de IA, seguimiento de peso, citas, inventario, comunicaciones, facturación, reportes, configuración/auditoría). |
| Backend del prototipo MVP | `05_MVP/backend/server.js`, `package.json`, `Dockerfile`, `docker-compose.yml` | Configuración del backend del prototipo funcional (Node.js) y su contenedorización. |
| Documentación del MVP | `05_MVP/README.md`, `SGCV-IA_Prototipo_Funcional.html` | Documentación de instalación/uso del prototipo. |

**Corrección a lo ya escrito en revisiones anteriores de este documento:**

- **"Guion de validación v2.0"** (`06_Experimento/instrumentos/Guion_Validacion_v2_0.pdf`): en una revisión previa se señaló que este archivo no existía en el repositorio (la única coincidencia era `06_Experimento/ instrumentos/Guion_Entrevista_v2.0.pdf`, un guion de **entrevista**, no de validación, creado por Amagua Sacón — `46297ae`, `1b0cb48`). **Actualización — instrumento localizado y subido.** El `Guion de validación v2.0` sí existe: fue diseñado por Vera Gómez y su archivo original (PDF, `CreationDate` del 6 de septiembre de 2026, verificable en la metadata) se sube ahora, sin modificar, a `06_Experimento/instrumentos/Guion_Validacion_v2_0.pdf`. El archivo incluye el instrumento aplicable (Secciones I–VIII), una nota de desviación para el manuscrito (Anexo A) y un borrador de comunicación interna del equipo (Anexo B). **El Anexo B es un borrador de mensaje, no una confirmación independiente de Vera Gómez** — se conserva en el archivo tal cual, pero no reemplaza su declaración propia (ver más abajo). Con esto, la desviación documentada en `07_Datos/desviaciones.md` (Rondas 1 y 2 diseñadas pero no ejecutadas) queda respaldada por evidencia real y verificable, en vez de una afirmación sin respaldo en el repositorio.

**Confirmación de Vera Gómez (relayada por Amagua Sacón el 12/09/2026, pendiente de que él la ratifique directamente por escrito o commit):** Vera Gómez confirma que él diseñó el instrumento y que lo terminó el 5 de septiembre de 2026. Indica que no lo subió antes al repositorio porque no sabía que era necesario hacerlo.

> **Nota de verificación:** la fecha que él reporta (5 de septiembre) no coincide exactamente con el `CreationDate` de la metadata del PDF (6 de septiembre). La diferencia es de un solo día y no cambia la conclusión de que el archivo es anterior a esta revisión — pero se deja anotada la discrepancia en vez de ajustarla, siguiendo el mismo criterio de no forzar los datos para que cuadren perfecto. Puede deberse a que el archivo se guardó/exportó al día siguiente de terminarlo, a diferencia de huso horario, o a un simple desfase de memoria; no se investigó más a fondo.

### Identificadores de commit

Extraídos y **verificados el 12/09/2026 mediante clonado directo del repositorio real** (`git log --author="Vera Gómez Anthony Alfredo"`, nombre canónico según `.mailmap`, que unifica las identidades `averag10@uteq.edu.ec` y `anthonyveragomez@gmail.com`). Se confirma que todos los commits bajo su identidad tienen cambios de archivo reales (`git diff-tree` no vacío) — no se encontró el patrón de commits vacíos detectado en la sección de Marcillo Ponce.

| Artefacto | Commit(s) |
|---|---|
| Protocolo experimental | `c38ab89` |
| Registro OSF | `6afbb4f` |
| Casos de uso — subida inicial (nomenclatura en español) | `915834e`, `4e8ca0c`, `2359674`, `6fcf088`, `400056c`, `daa6974`, `193420d`, `39ff860`, `d5ada5b`, `3c7dfaf`, `c7d9ecd`, `a5b149d` |
| Casos de uso — versión final bilingüe (`.drawio`/`.svg`) | `48ebc9c`, `70df1cf`, `1aea8a9`, `c4c5669`, `f399bea`, `19a7c0c`, `6e1ffe8`, `140067a`, `d0cf7d9`, `774cef8`, `fc67381`, `edc0d33`, `2f7e545`, `0c8152c`, `9b19aa9`, `01774fa`, `83ef355`, `141832d`, `c5eb4ca` |
| **Verificación:** total real de commits bajo casos de uso (incl. renombres, correcciones y limpieza de duplicados) | **67 commits** confirmados entre el 18/08 y el 01/09/2026 — más de los listados individualmente arriba; disponible el detalle completo fila-por-fila si se requiere para el anexo |
| Diagramas de secuencia | `49553b5`/`2695b53`/`62a226e` (facturación, incl. corrección de carpeta duplicada), `7aae45b`/`8f2a95b` (atención clínica), `fdae2cf`/`f92d9d2` (recordatorio) |
| Diagrama de clases refinado v3.1 | `7d35e6c` (drawio), `b4cc9b7` (svg), `07a213e` (rename a png) |
| Diagrama de componente | `b223d5c` (drawio), `7645070` (svg), `8254049` (rename a png) |
| Diagrama de despliegue | `bb79f90` (drawio), `43d555a` (svg), `13f038c` (rename a png) |
| Diagramas de estado | `d89e3c3`/`e8bf29c`/`7d64ffb` (cita médica: drawio/svg/rename png), `cca3769`/`f1f2885`/`aa4f912` (producto: drawio/svg/rename png) |
| Mockups MU-001 a MU-033 | **66 commits verificados** (más de los 31 listados en la revisión anterior de este documento — hay revisiones y renombres adicionales por archivo no capturados antes); entre ellos: `7c618f0`, `a52a134`, `5ba265f`, `09c032e`, `12fab99`, `27589a7`, `2eee8ec`, `3f2362c`, `e244e73`, `8263667`, `519b86d`, `946bf79`, `00c7119`, `277ad48`, `3a74aa3`, `eeca350`, `d9d5b72`, `f90174f`, `557cd3d`, `778d61f`, `bcf28af`, `67f8826`, `21245bc`, `e4bbab5`, `68fffe8`, `660fd16`, `fc431bc`, `2e596d3`, `f91c7bc`, `56b8740`, `ad7f30d`, `037d149` |
| Backend del MVP (`server.js`, `package.json`) | `dd19137`, `25c936e` (versión final en `05_MVP/backend/`, minúscula). **Nota:** existió una subida previa duplicada en `05_MVP/Backend/` (mayúscula) — `d475c52`, `95d2dee` — luego eliminada en `688b26d` al reestructurar la carpeta. |
| Dockerfile / docker-compose | `70f1e73`/`7517362` (Dockerfile, dos subidas), `6ae605e`/`5a130bb` (docker-compose, dos subidas) |
| Documentación del MVP | `75d2e59` (README inicial), `6ec3d4b`, `31f17b7`, `63801a8`, `32b4798`, `84c6fff`, `e24c503` (revisiones sucesivas), `3c722c5`/`bf01284` (HTML del prototipo, dos subidas) |
| Guion de validación v2.0 (`06_Experimento/instrumentos/Guion_Validacion_v2_0.pdf`) | **[PENDIENTE — completar con el hash del commit una vez subido]**. Archivo con `CreationDate` original del 06/09/2026 (metadata verificada), subido sin modificar. |

**Nota de verificación adicional:** en una revisión previa de este documento, el instrumento "Guion de validación v2.0" no aparecía bajo ninguna identidad de Vera Gómez en el historial del repositorio, porque aún no se había subido. Ver la corrección más arriba, en "Artefactos de los que es responsable".

### Firma

Anthony Alfredo Vera Gómez — Fecha: 12/09/2026

---

## Jhon Alexander Mesías Quijije (Verificador)

### Responsabilidad asignada en el reparto de trabajo

Según `06_Experimento/README.md`: **Verificador**. El historial de commits muestra dos bloques de trabajo concretos: el paquete de ética del proyecto (`08_Etica`) y la bibliografía del ERS, además de su rol como segundo codificador (A7) y de haber revisado/corregido el script de kappa después de la versión inicial de Marcillo Ponce.

> No se encontró evidencia en git de que Mesías haya creado o editado directamente el catálogo de RF/RNF dentro de `01_ERS/ERS_SRS_2B_v2.0.tex` (la referencia mencionada en la revisión anterior de este documento). Si su aporte a ese catálogo existió pero se canalizó a través de otra persona que subió el archivo consolidado, **debe aportar evidencia adicional** (versión de trabajo, capturas, historial de un documento compartido, etc.), ya que un commit de git no lo respalda por sí solo.

### Artefactos de los que es responsable

| Artefacto | Ruta | Descripción del aporte |
|---|---|---|
| Doble codificación independiente (A7) | `10_Autoria/doble_codificacion/hoja_codificador2_Mesias.csv` | Codificación independiente de 4 entrevistas (P02, P07, P13, P16 — 25% del corpus), sin acceso previo a la codificación original, para el cálculo del coeficiente de acuerdo entre codificadores (kappa de Cohen = 0,36, IC 95% [-0,32, 1,04]). |
| Revisión y corrección del script de kappa e interpretación | `10_Autoria/doble_codificacion/calcular_kappa.py`, `resultado_kappa.csv`, `resultado_doble_codificacion.md` | Un día después de la versión inicial de Marcillo Ponce (6 de septiembre), Mesías Quijije recreó la carpeta `doble_codificacion/` y revisó estos tres archivos: eliminó entradas duplicadas en `resultado_doble_codificacion.md`, limpió comentarios en `calcular_kappa.py` y corrigió el formato de los resultados, antes de la versión final integrada al repositorio. |
| Paquete de ética del proyecto | `08_Etica/A01_Anexo.pdf` … `A13_Anexo.pdf`, `Aval_Institucional.pdf`, `Categoria_B/B2_Proteccion_Datos_Personales.pdf`, `B3_No_Uso_Datos_Reales.pdf`, `B5_Datos_Menores.pdf`, `Adenda_Segunda_Ronda.pdf` | Subida y actualización (dos rondas, 28 y 31 de agosto) de los 13 anexos éticos, el aval institucional y los tres formularios de protección de datos/menores de la Categoría B. |
| Bibliografía del ERS | `01_ERS/referencias.bib` | Creación completa del archivo (444 líneas, 40 referencias verificadas manualmente contra Crossref/PubMed/arXiv o editorial, con nota de cuántas cuentan con DOI confirmado). |
| Metadatos de citación — primer DOI real | `CITATION.cff` | Reemplazó el marcador `PENDIENTE` del campo `doi` por el primer DOI real de Zenodo y agregó el identificador Software Heritage (SWHID), antes de las actualizaciones posteriores de Amagua Sacón y Marcillo Ponce al DOI curado final. |
| Evidencia cifrada de las grabaciones de walkthrough | `02_Evidencias/00_Restringido/evidencias_walkthrough.7z.001`–`.004`, `checksums_walkthrough.sha256` | Empaquetado y subida (8 de septiembre) de las grabaciones cifradas de las sesiones de walkthrough (~280 MB en 4 partes) con sus checksums SHA-256. |
| Diagramas UML — versión inicial (2 de agosto) | `03_Modelado/Diagramas_UML/` (`CU00_General.png`, diagramas de actividad, clases, componentes, despliegue, estados, secuencia) | Primera versión de varios diagramas UML del sistema, posteriormente rehecha y renombrada a nomenclatura bilingüe por Vera Gómez (ver su sección); estas versiones iniciales ya no están en el repositorio (fueron reemplazadas, no eliminadas sin registro). |

### Identificadores de commit

Extraídos de `git log --author="jmesiasq@uteq.edu.ec"` (y las identidades `mesiasjhon52@gmail.com` / `jmesiasq@msuteq.edu.ec`, unificadas por `.mailmap`) sobre el repositorio real.

| Artefacto | Commit(s) |
|---|---|
| Hoja de codificación propia (A7) | Ver commit de creación en la sección de Marcillo Ponce (`374a5b2`); actualizaciones propias: `e6a8a34`, `15266b6`, `436aa84` (rename) |
| Revisión de `calcular_kappa.py` | `b08d935`, `89b4f14`, `d9c0023` |
| Revisión de `resultado_kappa.csv` | `95bed21`, `bd32c87` |
| Revisión de `resultado_doble_codificacion.md` | `4540b6d`, `79c0ee2`, `cdc2b38`, `5f02e3c` |
| Recreación de la carpeta `doble_codificacion/` | `07669dd` |
| Anexos de ética (1ª ronda, 28 ago) | `f21b690`…`14c4f10` (anexos 1–9), `0bdf258`/`93e056e` (anexos 10–11), `69fcf04` (aval), `b436ac8`/`f25a10e`/`fce6a6d` (Categoría B), `c63d055` (adenda) |
| Anexos de ética (2ª ronda, 31 ago) | `c9d30a4`…`c818841` (anexos 1–9 actualizados), `48769b0`/`464a0ef` (anexos 10–11), `684491a` (aval), `2af95a0`/`53f150c`/`37e0601` (Categoría B), `e0be44e`/`f34556b` (adenda) |
| `referencias.bib` (ERS) | `e0336cd` |
| `CITATION.cff` — primer DOI real | `ab8b84b`, `ee56436` |
| Evidencia cifrada de walkthrough | `ffa3832` |
| Diagramas UML — versión inicial (superada) | `310c79d`, `0153406`, `64627a7`, `4ca25ba`, `c64924a`, `84d65ee`, `3e3b0e5`, `f5adbdc`, `3472f41`, `aff63a9`, `136c809`, `e17e84b`, `c681dd4` |
| `aporte_individual.md` (revisión de este documento) | `9d7019e` |

**[PENDIENTE — Mesías Quijije: confirmar su responsabilidad asignada, aportar evidencia sobre el catálogo de RF/RNF si corresponde, y agregar cualquier otro artefacto de su autoría no listado aquí.]**

### Firma

Jhon Alexander Mesías Quijije — Fecha: ______________


---

## Carlos Daniel Barrionuevo Fuentes (Responsable de criterios y actividades de la Entrega 4 — 2B)

### Responsabilidad asignada en el reparto de trabajo

Según `06_Experimento/README.md`: responsable de criterios y actividades generales de la Entrega 4 (2B) (misma descripción genérica que la de Marcillo Ponce en ese README). El historial de commits muestra dos aportes concretos y verificables: la recolección original de los datos de campo y el pipeline reproducible de análisis de `07_Datos/`.

> Esta responsabilidad es la que consta en el README del proyecto; es genérica y no refleja el detalle real de su trabajo. Debe completarla o corregirla él mismo antes de firmar.

### Artefactos de los que es responsable

| Artefacto | Ruta | Descripción del aporte |
|---|---|---|
| Subida original de los datos de campo | (ruta original `06_Experimento/datos_crudos/`, hoy `07_Datos/datos_crudos/` tras la reorganización de Amagua Sacón) | Subida inicial de las 16 transcripciones de entrevistas (P01–P16) y de la encuesta cruda (`encuesta_respuestas_crudas.csv`), antes de que el repositorio se reestructurara. |
| Pipeline reproducible de `07_Datos/` | `07_Datos/scripts/run_all.R`, `importar_datos.R`, `curva_saturacion.R`, `conteo_codigos.R`, `generar_checksums.R`, `justificacion_muestra.R` | Construcción de un pipeline de 6 scripts en R que corre con un solo comando (`run_all.R` como orquestador) y genera, sin intervención manual, todos los resultados de `07_Datos/resultados/`: curva de saturación temática (recalculada desde la columna `Evidencia_participantes` del CSV de codificación axial, no copiada de ningún reporte), conteo de códigos por categoría, checksums de datos y la justificación estadística del tamaño de muestra de la encuesta (n=60, comparando el margen de error alcanzado contra el necesario para distintos niveles de precisión), además de una tabla agregada (nunca por persona) del perfil de los participantes. |
| Mapa de stakeholders (versión actual) | `04_Trazabilidad/Mapa_de_stakeholders.csv` | Última versión subida del mapa de stakeholders (la primera versión, de Marcillo Ponce, fue reemplazada por esta el 30 de agosto). |
| Trabajo temprano de ERS/Trazabilidad (2A, superado) | `01_ERS/ERS_SGCVIA_v3_0_4toA.pdf`, `04_Trazabilidad/Requisitos_Funcionales.*`, `Requisitos_No_Funcionales.*`, `Trazabilidad.*`, `C6_Priorizacion_Trazabilidad_Extendida.docx` | Documentos de una entrega anterior (2A/4toA); el propio Barrionuevo los eliminó el 2 de agosto al consolidarse la matriz única `matriz_trazabilidad.csv` de la Entrega 4. Se listan por trazabilidad histórica, no como artefactos vigentes. |
| Video de demostración del MVP (superado) | `05_MVP/Video_demo.mp4` | Video de demostración temprano del prototipo; ya no está en el repositorio (Vera Gómez quitó la referencia al reestructurar `05_MVP/` el 5 de septiembre). Se lista por trazabilidad histórica. |

**[PENDIENTE — Barrionuevo Fuentes: confirmar su responsabilidad asignada real (la del README es genérica) y agregar cualquier otro artefacto de su autoría no listado aquí.]**

### Identificadores de commit

Extraídos de `git log --author="cbarrionuevof@uteq.edu.ec"` sobre el repositorio real.

| Artefacto | Commit(s) |
|---|---|
| Datos de campo — subida original | (subida por lotes el 2 de agosto; ruta ya reorganizada por Amagua Sacón el 3 de septiembre, ver `563b0fa` en su sección) |
| `run_all.R` | `5ec0f60` (subida), `cde7997` (actualización) |
| `importar_datos.R` | `a916f5a` |
| `curva_saturacion.R` | `1ce8891` |
| `conteo_codigos.R` | `f640a02` |
| `generar_checksums.R` | `520d50e` |
| `justificacion_muestra.R` | `a3ff9ed` |
| `Mapa_de_stakeholders.csv` (versión actual) | `4e30bc0` |
| Documentos ERS/Trazabilidad 2A (eliminados) | `41b20d7`, `757a91e`, `016cf52`, `f05ac19`, `153bef6`, `048f693` |

### Nota de aclaración — commits del 11 y 12 de septiembre bajo identidad incorrecta

Los siguientes commits, todos correspondientes a trabajo real de Carlos Daniel Barrionuevo Fuentes
(resincronización del pipeline de `07_Datos/`, regeneración de checksums y correcciones de
documentación de cierre), aparecen firmados como `jmesiasq-art <jmesiasq@uteq.edu.ec>` porque se
realizaron desde una terminal Git Bash configurada localmente con la identidad de Jhon Alexander
Mesías Quijije, en lugar de la propia:

| Commit | Fecha/hora | Descripción |
|---|---|---|
| `878777c` | 2026-09-11 23:18 | Regenera checksums.sha256 y checksums_datos.sha256 (primer intento) |
| `dd2c7bd` | 2026-09-11 23:19 | Merge |
| `3beda6b` | 2026-09-11 23:32 | Corrige checksums.sha256 de la raíz |
| `aee9c22` | 2026-09-11 23:34 | Regenera checksums_datos.sha256 y registro_deposito.md |
| `2fc1823` | 2026-09-11 23:40 | Quita línea de adjunto de GitHub en README_datos.md |
| `2ed3499` | 2026-09-11 23:43 | Corrige typo scritps -> scripts en 10_Autoria |
| `d488e93` | 2026-09-12 00:06 | Resincroniza el pipeline de 07_Datos con los datos actuales (n=210) |
| `432ea81` | 2026-09-12 00:07 | Merge |

El commit `22af379` ("Update desviaciones.md", mismo período) sí aparece correctamente firmado
como Carlos Daniel Barrionuevo Fuentes porque se realizó editando directamente en la interfaz web
de GitHub, que usa la cuenta autenticada del navegador en vez del `git config` local de la
terminal.

**Motivo del error:** ambos integrantes compartieron temporalmente el mismo equipo/terminal
durante el cierre de la Entrega 4, y no se verificó la identidad de Git configurada antes de
empezar a commitear.

**Corrección aplicada:** el 12 de septiembre de 2026 se corrigió el `git config` local de esa
máquina (`user.name` y `user.email`) a la identidad de Carlos Daniel Barrionuevo Fuentes, para que
los commits posteriores queden correctamente atribuidos. Los commits ya listados arriba no se
reescribieron (`rebase`/`amend`) para evitar romper las referencias por hash que ya existen en
este documento y en `10_Autoria/bitacora_sesiones.csv`; en su lugar, quedan aclarados aquí por
escrito.

**Confirmado por:** Carlos Daniel Barrionuevo Fuentes.

### Firma

Carlos Daniel Barrionuevo Fuentes — Fecha: 12/09/2026

---

## Nota de verificación cruzada (hallazgos de esta revisión)

Al completar las secciones de Amagua Sacón, Vera Gómez, Mesías Quijije y Barrionuevo Fuentes contra el repositorio real (`https://github.com/ramaguas-ship-it/SGCV-IA`, clonado y auditado con `git log`/`git diff-tree`), aparecieron hallazgos que afectan directamente a la sección ya firmada de **Alberto Jeanpool Marcillo Ponce** y que el equipo debe resolver antes de la entrega:

1. **Seis commits sin ningún cambio de archivo, citados como evidencia propia.** Los commits `40d9f19`, `72e894d`, `157e06a`, `6773258`, `60cfc94` y `6ea7a75` — todos bajo la identidad `amarcillop@uteq.edu.ec` — no modifican ningún archivo (`git diff-tree --no-commit-id --name-only -r <hash>` devuelve una lista vacía en los seis casos). A pesar de eso, tienen mensajes de commit detallados que describen cambios específicos (actualización del DOI de Zenodo en el manuscrito, en `title_page.tex` y en `CITATION.cff`; subida de `fair_assessment.pdf`; revisiones de `README_dataset.md`), y ese mismo texto describe casi palabra por palabra cambios que **ya existían** en commits reales de Amagua Sacón hechos minutos u horas antes (`5c7b5da`, `4927b8d`, `aa64266`, `d11b997`). Dos de ellos (`40d9f19` y `72e894d`) incluso agregan en el propio mensaje del commit una frase de autoevaluación ("Verificado y aprobado por Alberto Jeanpool Marcillo Ponce... responsable de... documentadas en `10_Autoria/aporte_individual.md`"), citando el mismo documento de aporte individual que esos commits sirven para respaldar. Estos seis hashes están citados en la tabla de "Identificadores de commit" de la sección de Marcillo Ponce, ya firmada.
2. **Esto no es un juicio sobre la intención**, solo una constatación verificable con las herramientas estándar de git; puede tratarse de un uso involuntario de `git commit --allow-empty` o de un problema de sincronización entre ramas/remotos locales. Pero, tal como está, la sección firmada de Marcillo Ponce cita seis commits vacíos como evidencia de trabajo que —según el propio repositorio— hizo otra persona. Esto es precisamente lo que el criterio P7/A10 busca prevenir ("Un documento con firmas pero sin contenido verificable no satisface el criterio").
3. **Recomendación:** que Marcillo Ponce revise esos seis commits, y que el equipo decida si corrige la tabla de commits de su sección (reasignando esas filas a Amagua Sacón, como se hizo en la sección de este último más arriba) o si aporta una explicación verificable de por qué esos commits vacíos sí representan trabajo suyo, antes de que el documento se dé por cerrado.
4. **Dos discrepancias adicionales, de menor gravedad pero con el mismo patrón** (contenido atribuido a alguien que no tiene el commit correspondiente): la "corrección de codificación de caracteres UTF-8" y el "script de curva de saturación (nivel abierto)", ambos originalmente atribuidos a Amagua Sacón en la revisión anterior de este documento, tienen sus únicos commits reales bajo la identidad de Marcillo Ponce. Se corrigieron en la sección de Amagua Sacón más arriba.
5. **Un artefacto que no existe:** `06_Experimento/instrumentos/Guion_Validacion_v2_0.pdf`, atribuido a Vera Gómez en la revisión anterior, no está en el repositorio. Se retiró de su sección; ver la nota allí.
6. **Advertencia general sobre el método:** una parte considerable del historial de este repositorio se hizo subiendo archivos por la interfaz web de GitHub (mensajes genéricos "Add files via upload"), no por `git commit` en local. En ese flujo, el autor que queda registrado es quien tenía la sesión iniciada al subir el archivo, que no es necesariamente quien produjo el contenido. Por eso, en los casos de esta lista donde no se encontró commit de la persona originalmente señalada, esta revisión lo marca como "no confirmado por git, requiere confirmación directa" en vez de reasignarlo sin más — excepto en los seis commits vacíos del punto 1, donde no hay una subida real de por medio que pueda explicar la discrepancia de esa manera.

## Nota sobre completitud de este documento

Las secciones marcadas `[PENDIENTE]` no deben eliminarse ni completarse con información no verificada. Cada integrante es responsable de completar y firmar su propia sección antes del corte de la Entrega 4. Un documento con firmas pero sin contenido verificable no satisface el criterio P7/A10 de la Guía de Desarrollo.
