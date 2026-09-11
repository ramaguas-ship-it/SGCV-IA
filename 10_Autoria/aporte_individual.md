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

Documentador — Responsable de C7 (Recolección de datos de campo), según `06_Experimento/README.md`. En la práctica, el historial de commits muestra que además actuó como integrador/mantenedor del repositorio: estructura de carpetas, unificación de identidades de commit, evidencia restringida, corrección de inconsistencias transversales (ERS, priorización, README) y cierre de la Entrega 4.

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

Robyn Willian Amagua Sacón — Fecha:10/09/2026

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

Verificador (según la tabla de roles de `06_Experimento/README.md`). En la práctica, el historial de commits real (`git log --use-mailmap --author="jmesiasq@uteq.edu.ec"`, 153 commits) muestra un rol de verificación distribuido en cuatro frentes: verificación cruzada de la codificación temática mediante doble codificación independiente (A7), gestión y cierre de todo el paquete de documentación ética (Anexos, Categoría B, Aval Institucional, Adenda), verificación de los participantes mediante member checking y evidencia de las sesiones de walkthrough, y verificación/corrección de metadatos de citación e identidades de commit.

### Artefactos de los que es responsable

| Artefacto | Ruta | Descripción del aporte |
|---|---|---|
| Doble codificación independiente (A7) — hoja propia | `10_Autoria/doble_codificacion/hoja_codificador2_Mesias.csv` | Codificación independiente de 4 entrevistas (P02, P07, P13, P16 — 25% del corpus, 77 fragmentos), sin acceso previo a `codificacion_tematica_SGCV-IA.csv`, usando solo las transcripciones y el `Guion_Entrevista_v2_0` como referencia. Tras una carga inicial de la hoja hecha por Marcillo Ponce, revisó y reescribió la redacción de sus propios códigos y, en al menos un caso, corrigió la categoría asignada a un fragmento propio. |
| Doble codificación independiente (A7) — script y resultado | `10_Autoria/doble_codificacion/calcular_kappa.py`, `resultado_doble_codificacion.md`, `resultado_kappa.csv` | Refinamiento del script de cálculo del coeficiente kappa de Cohen (acuerdo bruto 89,3%, kappa 0,36, IC 95% [-0,32, 1,04]) y redacción de la interpretación: explicación de la paradoja del kappa (Feinstein y Cicchetti, 1990) para un acuerdo bruto alto con kappa moderado, revisión fragmento por fragmento de los 3 desacuerdos concretos distinguiendo cuáles son diferencia de granularidad de clasificación (P16/Seguridad) y cuáles son diferencia de cobertura/selección de fragmentos (P07/Gestión administrativa, P07/Inventario), y reconocimiento explícito de la limitación del intervalo de confianza amplio por el tamaño de muestra. |
| Paquete de documentación ética (Anexos, Categoría B, Aval, Adenda) | `08_Etica/A01_Anexo.pdf` … `A11_Anexo.pdf`, `08_Etica/Categoria_B/B2_Proteccion_Datos_Personales.pdf`, `B3_No_Uso_Datos_Reales.pdf`, `B5_Datos_Menores.pdf`, `08_Etica/Aval_Institucional.pdf`, `08_Etica/Adenda_Segunda_Ronda..pdf` | Carga y actualización, en dos rondas (28 y 31 de agosto), de los 11 anexos, los 3 formularios de Categoría B, el Aval Institucional y la Adenda de la Segunda Ronda del comité de ética. Consolidación de la numeración de anexos: detectó y eliminó `A12_Anexo.pdf` y `A13_Anexo.pdf`, que quedaban fuera del índice final de 11 anexos. |
| Evidencia cifrada de las sesiones de walkthrough | `02_Evidencias/00_Restringido/evidencias_walkthrough.7z.001-004`, `checksums_walkthrough.sha256` (y copia del checksum en `02_Evidencias/`) | Empaquetado y cifrado de las grabaciones de las sesiones de validación por walkthrough, con checksums SHA-256, siguiendo el mismo esquema de evidencia restringida que Amagua Sacón usó para las entrevistas. |
| Actas de validación por walkthrough (W01–W06) | `02_Evidencias/Validacion_Walkthrough/07-09-2026_Acta_W01_Walkthrough.pdf` … `08-09-2026_Acta_W06_Walkthrough.pdf` | Subida de las 6 actas de las sesiones de walkthrough realizadas el 7 y 8 de septiembre. |
| Member checking | `02_Evidencias/Member_Checking/Acta_MemberChecking_P03_P09_P15.pdf` y los 3 consentimientos informados correspondientes (P03, P09, P15) | Acta de member checking con 3 participantes del estudio y sus consentimientos informados asociados, como verificación de los hallazgos con los propios entrevistados. |
| Diagramas organizacionales i* — scripts reproducibles | `03_Modelado/Organizacional_iStar/Diagrama_Contexto.py`, `Matriz_Poder_Interes.py`, `iStar_SD.py`, `iStar_SR.py` | Reconstrucción en Python/matplotlib de los 4 diagramas ya publicados como PNG/SVG por Marcillo Ponce, como scripts que regeneran cada imagen de forma reproducible en lugar de dejarlas solo como archivos estáticos no editables. |
| Trabajo temprano de Diagramas UML (superado) | Antiguas rutas en `03_Modelado/Diagramas_UML/*.pdf` (subida original del 2 de agosto) | Subida original de 11 diagramas UML en PDF (casos de uso, diagramas de secuencia, actividad, estados, despliegue, componentes y clases refinadas). Estos PDF fueron eliminados y reemplazados por la reorganización posterior de Vera Gómez y Barrionuevo Fuentes al formato actual (`.drawio`/`.svg`/`.png`); solo sobrevive `CU_Detallados_Especificacion.pdf`. Se lista por trazabilidad histórica, no como artefacto vigente. |
| Metadatos de citación y enlaces de archivo (primera ronda) | `CITATION.cff`, `README.md` | Actualización de versión (2A → 2B) y registro del primer DOI de Zenodo (depósito automático) y del identificador SWHID de Software Heritage en `CITATION.cff`; enlaces a OSF, Zenodo y Software Heritage en el `README.md`. Este primer depósito automático (licencia MIT) fue reemplazado después por el depósito curado en CC BY 4.0 de Marcillo Ponce (ver su sección), quien actualizó estos mismos archivos con el DOI final. |
| Bibliografía del ERS | `01_ERS/referencias.bib` | Creación del archivo de referencias bibliográficas del ERS. |
| Corrección de identidades en `.mailmap` | `.mailmap` | Corrección de su propia entrada, unificando sus tres identidades de Git (`jmesiasq-art`, `JmesiasqUtq`, `jmesiasq24`) bajo su nombre canónico `Mesias Quijije Jhon Alexander <jmesiasq@uteq.edu.ec>`, tras una versión intermedia que las dejaba mapeadas solo al alias de GitHub sin el nombre completo. |
| Limpieza de duplicado en la raíz | `title_page.pdf` (raíz, ya eliminado) | Eliminación de una copia duplicada de `title_page.pdf` que había quedado en la raíz del repositorio tras la reorganización de carpetas, evitando confusión con la versión vigente en `09_Publicacion/`. |

### Identificadores de commit

Extraídos de `git log --use-mailmap --author="jmesiasq@uteq.edu.ec"` sobre el repositorio real.

| Artefacto | Commit(s) |
|---|---|
| Hoja de codificación propia — recreación de la carpeta tras eliminación | `1f2466e`, `3b67f8a`, `a1fa368`, `849d586`, `d8bd502` (eliminación), `07669dd` (re-subida) |
| Hoja de codificación propia — versión final | `e6a8a34`, `bd32c87`, `436aa84`, `42e473c` |
| `calcular_kappa.py` (refinamiento) | `d9c0023`, `b08d935`, `89b4f14` |
| `resultado_doble_codificacion.md` (redacción de interpretación) | `cdc2b38`, `79c0ee2`, `5f02e3c`, `4540b6d` |
| `resultado_kappa.csv` (actualización) | `95bed21` |
| Anexos 1–11 (creación, 28 de agosto) | `f21b690`, `2950fd3`, `69c1ed2`, `34f4d07`, `5d81cc1`, `6cd9f20`, `0a90933`, `a4caac3`, `14c4f10`, `0bdf258`, `1dd3dcc`, `93e056e` |
| Anexos 1–11 (actualización final, 31 de agosto) | `c9d30a4`, `17adf19`, `b646174`, `128ed07`, `40555d9`, `7608341`, `70cb492`, `7b29412`, `c818841`, `48769b0`, `464a0ef` |
| Categoría B — B2/B3/B5 (creación 28-ago, versión final 31-ago) | `b436ac8`, `f25a10e`, `fce6a6d`, `2af95a0`, `53f150c`, `37e0601` |
| Aval Institucional | `69fcf04` (28-ago), `684491a` (31-ago) |
| Adenda Segunda Ronda | `c63d055` (28-ago), `f34556b` (31-ago) |
| Eliminación de anexos fuera de índice (A12, A13) | `b15a680`, `7381bf1` |
| Evidencia cifrada de walkthrough (grabaciones + checksums) | `ffa3832`, `fad7a0c`, `8c6401f`, `c291851` |
| Actas de walkthrough W01–W06 | `589c0c2` (W01–W05), `e844850`/`ce43f2e`/`17fa9b5` (W06) |
| Member checking (acta + consentimientos + renombrados) | `76c070e`, `9eb811c`, `ca71bcf`, `aa0e33a`, `355b9f0` |
| Scripts de diagramas i* (`Organizacional_iStar/*.py`) | `3c0dc4c` |
| Diagramas UML — subida original en PDF (superada) | `310c79d`, `f5adbdc`, `3472f41`, `4ca25ba`, `aff63a9`, `98c7b6b`, `84d65ee`, `c64924a`, `c681dd4`, `e17e84b`, `136c809`, `3e3b0e5`, `0153406`, `c444002`, `4818040` |
| `CITATION.cff` / `README.md` (primer DOI de Zenodo y SWHID) | `ee56436`, `ab8b84b`, `1694290` |
| `01_ERS/referencias.bib` | `e0336cd`, `39b9f26`, `43b329f` |
| `.mailmap` (corrección de identidad propia) | `c2e7cea`, `3f586bf`, `3dcca76` |
| Eliminación de `title_page.pdf` duplicado en la raíz | `ca89901` |

**Nota:** el listado anterior cubre lo verificable directamente en el historial de Git. Si recuerdas artefactos propios que no dejaron rastro de commit (por ejemplo, coordinación de las sesiones de walkthrough o del member checking, que no siempre generan un archivo), añádelos tú mismo antes de firmar — no se han incluido aquí para no completar la sección con información no verificada.

### Firma

Jhon Alexander Mesías Quijije — Fecha: ______________

---

## Carlos Daniel Barrionuevo Fuentes (Apoyo — Modelador; responsable de criterios y actividades de la Entrega 4 — 2B)

### Responsabilidad asignada en el reparto de trabajo

El `06_Experimento/README.md` lo describe con la misma frase genérica que a Marcillo Ponce ("responsable de criterios y actividades de la Entrega 4 — 2B"), que no refleja el detalle real de su trabajo. La responsabilidad específica y verificable es la del documento **"Reparto de trabajo — Entrega 4"**, donde consta como **Apoyo — Modelador**, con las tareas asignadas cubriendo tanto `07_Datos/scripts/` como el pipeline de análisis cuantitativo/cualitativo de `06_Experimento/scripts_analisis/` (9 scripts + orquestador), incluida la corrección de dos scripts preexistentes que tenían inconsistencias de rutas.

### Artefactos de los que es responsable

| Artefacto | Ruta | Descripción del aporte |
|---|---|---|
| Pipeline de análisis de `06_Experimento/scripts_analisis/` (9 scripts + orquestador) | `01_importar_datos.R`, `02_limpieza.R`, `03_curva_saturacion_codigos_abiertos.R` *(corregido)*, `04_descriptivos.R`, `05_supuestos.R`, `06_pruebas_hipotesis.R`, `07_tamano_efecto.R`, `08_figuras.R` *(corregido)*, `09_tablas.R`, `run_all.R` | Construcción completa del pipeline de análisis del componente empírico (Enfoque 3), reutilizando los resultados ya limpios de `07_Datos/` en vez de duplicar el parseo de datos crudos. Incluye: limpieza y detección de duplicados/valores faltantes; estadísticos descriptivos (media, mediana, DE, IQR) de las 4 preguntas Likert de la encuesta por perfil de participante; verificación de supuestos (Shapiro-Wilk, Levene) que decide automáticamente el tipo de prueba a usar; comparación entre los 4 perfiles con Wilcoxon/Mann-Whitney U y corrección Holm-Bonferroni por comparaciones múltiples; tamaño del efecto (delta de Cliff y d de Cohen, con intervalos de confianza al 95% por bootstrap de 10.000 réplicas); **cálculo de potencia estadística** que documenta formalmente que el perfil dominante de la encuesta (26/60, dueños de mascota) no alcanza el n≥60 exigido por la guía, con una potencia real de ~42% para detectar un efecto mediano (d=0.5), declarando el hallazgo como evidencia exploratoria y no confirmatoria; 6 figuras y 6 tablas consolidadas hacia `09_Publicacion/`. También corrigió dos inconsistencias en el script preexistente `03_curva_saturacion_codigos_abiertos.R` (rutas relativas incompatibles con la ejecución desde la raíz del repositorio, y una configuración de gráfico específica de Linux/Mac que fallaba en Windows), sin alterar su lógica de cálculo. |
| Pipeline reproducible de `07_Datos/` | `07_Datos/scripts/run_all.R`, `importar_datos.R`, `curva_saturacion.R`, `conteo_codigos.R`, `generar_checksums.R`, `justificacion_muestra.R`; `07_Datos/diccionario_datos.csv` | Construcción de un pipeline de 6 scripts en R que corre con un solo comando (`run_all.R` como orquestador) y genera, sin intervención manual, todos los resultados de `07_Datos/resultados/`: curva de saturación temática (recalculada desde la columna `Evidencia_participantes` del CSV de codificación axial, no copiada de ningún reporte), conteo de códigos por categoría, checksums de datos y registro de depósito (`checksums_datos.sha256`, `registro_deposito.md`, generados por script a partir de hashes SHA-256 reales), y la justificación estadística del tamaño de muestra de la encuesta (n=60, margen de error alcanzado ~12.7% con 95% de confianza), además de una tabla agregada (nunca por persona) del perfil de los participantes. Incluye también la finalización de `diccionario_datos.csv` (columna por columna: tipo de dato, valores posibles, codificación de valores perdidos y procedencia, para las 21 columnas de la encuesta y los 6 campos de las transcripciones). |
| Subida original de los datos de campo | (ruta original `06_Experimento/datos_crudos/`, hoy `07_Datos/datos_crudos/` tras la reorganización de Amagua Sacón) | Subida inicial de las 16 transcripciones de entrevistas (P01–P16) y de la encuesta cruda (`encuesta_respuestas_crudas.csv`), antes de que el repositorio se reestructurara. |
| Mapa de stakeholders (versión actual) | `04_Trazabilidad/Mapa_de_stakeholders.csv` | Última versión subida del mapa de stakeholders (la primera versión, de Marcillo Ponce, fue reemplazada por esta el 30 de agosto). |
| Trabajo temprano de ERS/Trazabilidad (2A, superado) | `01_ERS/ERS_SGCVIA_v3_0_4toA.pdf`, `04_Trazabilidad/Requisitos_Funcionales.*`, `Requisitos_No_Funcionales.*`, `Trazabilidad.*`, `C6_Priorizacion_Trazabilidad_Extendida.docx` | Documentos de una entrega anterior (2A/4toA); el propio Barrionuevo los eliminó el 2 de agosto al consolidarse la matriz única `matriz_trazabilidad.csv` de la Entrega 4. Se listan por trazabilidad histórica, no como artefactos vigentes. |
| Video de demostración del MVP (superado) | `05_MVP/Video_demo.mp4` | Video de demostración temprano del prototipo; ya no está en el repositorio (Vera Gómez quitó la referencia al reestructurar `05_MVP/` el 5 de septiembre). Se lista por trazabilidad histórica. |

### Identificadores de commit

Extraídos de `git log --author="cbarrionuevof@uteq.edu.ec"` sobre el repositorio real.

| Artefacto | Commit(s) |
|---|---|
| `01_importar_datos.R` (06_Experimento) | `f369096` |
| `02_limpieza.R` (06_Experimento) | `ee05040` |
| `03_curva_saturacion_codigos_abiertos.R` (06_Experimento, subida original) | `d03038c` |
| `03_curva_saturacion_codigos_abiertos.R` (06_Experimento, corrección) | `87eb965` |
| `04_descriptivos.R` (06_Experimento) | `72a0fd1` |
| `05_supuestos.R` (06_Experimento) | `02fba14` |
| `06_pruebas_hipotesis.R` (06_Experimento) | `91128c4` |
| `07_tamano_efecto.R` (06_Experimento) | `968d7ce` |
| `08_figuras.R` (06_Experimento, subida original) | `4227efc` |
| `08_figuras.R` (06_Experimento, corrección) | `5114d89` |
| `09_tablas.R` (06_Experimento) | `8286c09` |
| `run_all.R` (06_Experimento) | `0cc645b` (subida como `run_all (3).R`), `75909f9` (renombrado a `run_all.R`), `5145ece` (actualización final) |
| `run_all.R` (07_Datos) | `5ec0f60` (subida), `cde7997` (actualización) |
| `importar_datos.R` (07_Datos) | `a916f5a` |
| `curva_saturacion.R` (07_Datos) | `1ce8891` |
| `conteo_codigos.R` (07_Datos) | `f640a02` |
| `generar_checksums.R` (07_Datos) | `520d50e` |
| `justificacion_muestra.R` (07_Datos) | `a3ff9ed` |
| `diccionario_datos.csv` (07_Datos) | `20e84bf` ("Update diccionario_datos.csv") |
| `checksums_datos.sha256` (07_Datos, contenido final, generado por `generar_checksums.R`) | `e6c0897` ("Update checksums_datos.sha256") |
| `registro_deposito.md` (07_Datos, contenido final, generado por `justificacion_muestra.R`) | `6ba192d` ("Update registro_deposito.md") |
| Datos de campo — subida original | (subida por lotes el 2 de agosto; ruta ya reorganizada por Amagua Sacón el 3 de septiembre, ver `563b0fa` en su sección) |
| `Mapa_de_stakeholders.csv` (versión actual) | `4e30bc0` |
| Documentos ERS/Trazabilidad 2A (eliminados) | `41b20d7`, `757a91e`, `016cf52`, `f05ac19`, `153bef6`, `048f693` |


### Firma

Carlos Daniel Barrionuevo Fuentes — Fecha: 08/09/2026

---

## Nota sobre completitud de este documento

Las secciones marcadas `[PENDIENTE]` no deben eliminarse ni completarse con información no verificada. Cada integrante es responsable de completar y firmar su propia sección antes del corte de la Entrega 4. Un documento con firmas pero sin contenido verificable no satisface el criterio P7/A10 de la Guía de Desarrollo.
