# SGCV-IA — Sistema de Gestión para Clínicas Veterinarias con Inteligencia Artificial

Especificación de Requisitos de Software (ERS/SRS) conforme a **ISO/IEC/IEEE 29148:2018**.

> **Proyecto Fin de Curso · Ingeniería de Requerimientos (ISR-401) · 4to Nivel**
> Universidad Técnica Estatal de Quevedo · Facultad de Ciencias de la Computación
> Período académico 2026–2027

---

## Dónde está el proyecto

Todo el contenido del proyecto se encuentra organizado en las carpetas correspondientes del repositorio.

```text
SGCV-IA/
├── README.md
├── LICENSE
├── CITATION.cff
├── CHANGELOG.md
├── .gitignore
├── .mailmap
├── checksums.sha256
├── fair_assessment.pdf
├── title_page.pdf
│
├── 01_ERS/
├── 02_Evidencias/
├── 03_Modelado/
├── 04_Trazabilidad/
├── 05_MVP/
├── 06_Experimento/
├── 07_Datos/
├── 08_Etica/
├── 09_Publicacion/
├── 10_Autoria/
└── 11_Defensa/
```

Las carpetas contienen los artefactos correspondientes a la especificación de requisitos, evidencia de campo, modelado, trazabilidad, MVP, experimentación, paquete de datos, publicación, evidencia de autoría y defensa oral.

---

## El sistema

**SGCV-IA** es un sistema de gestión para clínicas veterinarias orientado a centralizar los procesos clínicos y administrativos de una clínica.

El sistema contempla la gestión de:

* Pacientes veterinarios.
* Propietarios.
* Historias clínicas.
* Consultas.
* Citas.
* Diagnósticos.
* Tratamientos.
* Prescripciones.
* Facturación.
* Inventario.
* Usuarios y roles.

Además, incorpora componentes de **Inteligencia Artificial** destinados a proporcionar apoyo al profesional veterinario durante determinados procesos.

Las funcionalidades de IA tienen carácter asistencial. Las recomendaciones generadas por el sistema deben ser revisadas y validadas por el profesional veterinario antes de ser utilizadas en la atención de un paciente.

El componente empírico del proyecto trabaja el **Enfoque 3 de la guía de evaluación** (explicabilidad como requisito no funcional), con la pregunta de investigación: *¿qué requisitos de explicabilidad, operacionalizados como RNF verificables, resultan necesarios y suficientes para los distintos perfiles de usuarios de un sistema clínico veterinario con IA?*

---

## Equipo SGCV-IA

| Integrante                        | Rol               |
| ---------------------------------- | ----------------- |
| Amagua Sacón Robyn Willian        | Documentador      |
| Barrionuevo Fuentes Carlos Daniel | Apoyo - Modelador |
| Marcillo Ponce Alberto Jeanpool   | Analista líder    |
| Mesías Quijije Jhon Alexander     | Verificador       |
| Vera Gómez Anthony Alfredo        | Modelador         |

**Docente supervisor:** Dr. Guerrero Ulloa Gleiston Cicerón

---

## 🔗 Enlaces principales

| Recurso                       | Ubicación                             |
| ------------------------------ | -------------------------------------- |
| ERS/SRS completo               | `01_ERS/ERS_SRS_2B_v2.0.pdf`          |
| Modelado                       | `03_Modelado/`                        |
| Matriz de trazabilidad         | `04_Trazabilidad/`                    |
| MVP funcional                  | `05_MVP/README.md`                    |
| Registro experimental          | `06_Experimento/OSF_Registration.pdf` |
| Scripts de análisis            | `06_Experimento/scripts_analisis/`    |
| Paquete de datos (Sección 7 de la guía de desarrollo) | `07_Datos/` |
| Manuscrito                     | `09_Publicacion/`                     |
| Evidencia de autoría           | `10_Autoria/`                         |
| Materiales de la defensa oral  | `11_Defensa/`                         |
| Evidencia de campo             | `02_Evidencias/`                      |
| Fichas técnicas                | `02_Evidencias/fichas_tecnicas.csv`   |
| Licencia                       | `LICENSE`                             |
| Citación                       | `CITATION.cff`                        |

### Identificadores externos

**Zenodo — DOI:** `10.5281/zenodo.22558095`

**OSF:** `osf.io/r5p8d`

**Software Heritage:**

```text
swh:1:dir:61ecd6edd0a82807ae244055a854fa84afbd0810
```

> **Nota de consistencia:** estos son los identificadores oficiales, iguales a los de `CITATION.cff`. `11_Defensa/guion.md` y `presentacion.pptx`, y `06_Experimento/README.md`/`06_Experimento/prompts_llm/README.md`, todavía citan un DOI de Zenodo (`10.5281/zenodo.22238486`) y un OSF (`osf.io/wkg32`) distintos — quedaron sin actualizar cuando se unificó aquí. Corregirlos antes de la defensa, y confirmar además contra el sitio de OSF/Zenodo (sin sesión iniciada) que `r5p8d` y `22558095` son efectivamente los correctos: la unificación anterior se hizo por consistencia interna entre documentos, no por verificación directa contra las plataformas.

---

## Obtener el repositorio

Debido a la reescritura del historial realizada el **27/08/2026**, se recomienda realizar una clonación limpia del repositorio.

### Clonar

```bash
git clone https://github.com/ramaguas-ship-it/SGCV-IA.git
cd SGCV-IA
```

### Comprobar el estado

```bash
git status
```

Si el repositorio se clonó correctamente, se tendrá acceso a la estructura y artefactos disponibles en la versión actual.

### Copias anteriores al 27/08/2026

El historial de Git fue reescrito para retirar del historial accesible contenido audiovisual identificable.

Los commits anteriores al **27/08/2026** conservan sus fechas y autores originales, pero sus identificadores cambiaron.

Si ya se tenía una copia local anterior a esa fecha, se recomienda eliminarla y clonar nuevamente:

```bash
git clone https://github.com/ramaguas-ship-it/SGCV-IA.git
```

Un `git pull` sobre una copia antigua puede producir errores debido al cambio de historial.

### Identidades de autoría

El archivo `.mailmap` en la raíz unifica las identidades históricas de Git (incluyendo cuentas de correo personal usadas antes de configurar el correo institucional) con el nombre y correo `@uteq.edu.ec` de cada integrante. Para ver el historial con las identidades ya unificadas:

```bash
git log --use-mailmap
```

---

## Especificación de Requisitos

El documento principal de requisitos se encuentra en:

```text
01_ERS/
└── ERS_SRS_2B_v2.0.pdf
```

El ERS/SRS documenta los requisitos del sistema, las necesidades identificadas durante el trabajo de campo y los elementos necesarios para especificar la solución.

La documentación de requisitos constituye la base para el modelado, trazabilidad, implementación y verificación del proyecto.

---

## Modelado

Los artefactos de modelado se encuentran en:

```text
03_Modelado/
```

Esta carpeta contiene los modelos y diagramas utilizados para representar los procesos, actores, funcionalidades y componentes relevantes del SGCV-IA.

Los modelos sirven como soporte para interpretar los requisitos y representar la solución propuesta.

---

## Trazabilidad

La documentación de trazabilidad se encuentra en:

```text
04_Trazabilidad/
```

La trazabilidad permite relacionar los requisitos con los diferentes artefactos generados durante el proyecto.

La relación general de los artefactos se puede representar como:

```text
Necesidad
   ↓
Requisito
   ↓
Modelo
   ↓
Implementación
   ↓
Verificación
```

Esto permite realizar un seguimiento de los requisitos desde su identificación hasta su correspondiente evidencia dentro del proyecto.

---

## MVP funcional

El prototipo funcional del sistema se encuentra documentado en:

```text
05_MVP/
```

Las instrucciones y documentación disponibles para el MVP se encuentran en:

```text
05_MVP/README.md
```

El MVP permite demostrar las funcionalidades implementadas y proporciona una representación funcional de la solución planteada en los requisitos.

---

## 🤖 Componentes de Inteligencia Artificial

El SGCV-IA incorpora componentes de Inteligencia Artificial orientados al apoyo de determinadas actividades veterinarias.

### IA-01 — Asistente de sugerencias diagnósticas

Componente destinado a generar sugerencias de apoyo utilizando la información clínica disponible.

Las sugerencias generadas no constituyen un diagnóstico definitivo y requieren revisión del profesional veterinario.

### IA-02 — Recomendador nutricional personalizado

Componente destinado a proporcionar recomendaciones nutricionales considerando información relevante del paciente.

Las recomendaciones deben ser revisadas por el profesional veterinario antes de su aplicación.

### Supervisión humana

El flujo de utilización de la IA se establece de la siguiente manera:

```text
Información del paciente
        ↓
Procesamiento mediante IA
        ↓
Resultado / sugerencia
        ↓
Revisión del profesional
        ↓
Decisión veterinaria
```

La Inteligencia Artificial se utiliza como herramienta de apoyo y no como sustituto del criterio profesional.

---

## Evidencia de campo

La evidencia de campo se encuentra organizada de forma que los archivos identificables permanezcan protegidos.

### Zona pública

```text
02_Evidencias/
├── fichas_tecnicas.csv
└── ...
```

Esta zona contiene la documentación y los registros técnicos que pueden ser consultados sin exponer directamente los archivos audiovisuales identificables.

### Zona restringida

```text
02_Evidencias/
└── 00_Restringido/
    ├── README.md
    └── evidencias_restringidas.7z (fragmentado en volúmenes .001, .002, ...)
```

La zona restringida contiene la evidencia audiovisual identificable obtenida durante las entrevistas, incluyendo videos, audios y consentimientos originales.

Los archivos `.7z` se encuentran protegidos mediante **AES-256**.

> **La contraseña del contenedor cifrado se entrega únicamente al docente evaluador mediante un canal externo. No se encuentra almacenada en este repositorio.**

---

## Verificación de integridad

La integridad de los archivos se controla mediante **SHA-256**.

Los valores de comprobación se encuentran en:

```text
checksums.sha256
```

La información técnica de los archivos audiovisuales se encuentra en:

```text
02_Evidencias/fichas_tecnicas.csv
```

Las fichas técnicas permiten registrar información como:

* Identificación del archivo.
* Tipo de evidencia.
* Duración.
* Códec.
* Tamaño.
* Hash SHA-256.

Después de disponer de los archivos correspondientes, puede verificarse su integridad mediante las herramientas SHA-256 disponibles en el sistema operativo.

---

## 🧪 Reproducir el análisis experimental

### Estado actual

**⚠️ Pipeline ejecutable, pero desincronizado con los datos crudos actuales — pendiente de regenerar antes del corte.**

Los datos crudos ya están depositados en:

```text
07_Datos/datos_crudos/
```

e incluyen las 16 transcripciones de entrevista (completas). El archivo `encuesta_respuestas_crudas.csv` **hoy contiene 210 respuestas** de cuestionario (49–56 por cada uno de los 4 perfiles: administrador 56, auxiliar/técnico 55, médico veterinario 50, dueño de mascota 49) 

Se verificó ejecutando el propio `07_Datos/scripts/importar_datos.R` sobre el estado actual del repositorio: importa las 210 filas sin filtrar ninguna, así que el archivo `datos_crudos` creció después de generarse los resultados actualmente commiteados.

Antes del corte hay que:

1. Correr `Rscript 07_Datos/scripts/run_all.R` sobre el `datos_crudos` actual.
2. Decidir si el manuscrito reporta n=210 (o el subconjunto que corresponda tras limpieza) y actualizar `justificacion_n60.md`, la sección de metodología del manuscrito y este README con la cifra real.
3. Si se opta por seguir usando un subconjunto de 60, documentar explícitamente el criterio de selección en `07_Datos/desviaciones.md` — un n distinto al que arroja el pipeline, sin ese criterio por escrito, se lee como dato no reproducible.

El pipeline reproducible del paquete de datos vive en:

```text
07_Datos/scripts/
```

con 6 scripts en R, incluido el orquestador `run_all.R`, que corre todo el pipeline con una sola orden (`Rscript 07_Datos/scripts/run_all.R`) y genera sin intervención manual la curva de saturación, el conteo de códigos por categoría, los checksums de datos y la justificación estadística del tamaño de muestra — una vez que se regenere con los datos actuales.

El directorio:

```text
06_Experimento/scripts_analisis/
```

contiene por ahora **1 solo script** (`03_curva_saturacion_codigos_abiertos.R`, curva de saturación a nivel de código abierto — distinto del script de saturación axial del pipeline anterior). Este directorio quedó pendiente de consolidarse con `07_Datos/scripts/`; por ahora conviven ambos.

Esta sección será actualizada cuando ambos directorios de scripts se unifiquen.

---

## Registro experimental

El protocolo experimental previo se encuentra documentado en:

```text
06_Experimento/OSF_Registration.pdf
```

También se dispone del identificador de OSF:

```text
osf.io/r5p8d
```

El registro conserva la documentación correspondiente al protocolo experimental definido para el proyecto.

### `prompts_llm/`

La carpeta `06_Experimento/prompts_llm/` se mantiene presente por consistencia con el árbol de carpetas obligatorio, pero **no aplica** a este proyecto: corresponde a los Enfoques 1 y 2 de la guía (donde un LLM genera Requisitos Funcionales o etiqueta ambigüedad como parte del análisis), mientras que SGCV-IA trabaja el Enfoque 3, donde el LLM es el sistema evaluado y no el instrumento de investigación. El detalle está documentado en el `README.md` de esa carpeta.

---

## Publicación

El material destinado a la publicación se encuentra en:

```text
09_Publicacion/
```

El manuscrito cuenta con contenido sustantivo (Abstract, Introduction, Related Work, Methodology, Results, Discussion, Threats to Validity, Conclusions), redactado con la plantilla oficial de Springer Nature (`sn-jnl.cls`) y compila sin errores.

Pendiente antes del envío:

* Elección formal de la revista o conferencia objetivo, notificada al docente (Sección 2 de la guía).
* Licencia definitiva del conjunto de datos y cita del manuscrito publicado.

Ya resuelto: ORCID de los 6 coautores confirmado (`title_page.tex`); verificación cruzada de las cifras de codificación temática contra `02_Evidencias/Codificacion_Tematica/` completada (corrección de 47 a 50 códigos axiales, propagada a los archivos que citaban el número anterior).

Detalle completo del estado por archivo en `09_Publicacion/README.md`.

---

## Evidencia de autoría

La carpeta `10_Autoria/` documenta que los artefactos entregados fueron producidos por el propio equipo, según la Guía de Desarrollo y Consolidación del PFC.

Elementos completos (8 de 12): `bitacora_sesiones.csv`, `declaracion_uso_ia.md`, `aporte_individual.md`, `exif_inventario.csv`, `doble_codificacion/`, `fotos_equipo/`, `correspondencia/`, `.mailmap` (raíz).

Parcial: `capturas/` — solo 7 imágenes cubriendo a 3 de los 5 integrantes (Robyn, Vera, Mesías); faltan las de Marcillo y Barrionuevo (mínimo: 3 por integrante).

Pendientes: `notas_campo/` (carpeta inexistente), `grabaciones/` (solo tiene un `Sesiones.md`, sin video real), fuentes editables de diagramas referenciadas explícitamente desde aquí (ya existen como `.drawio` en `03_Modelado/Diagramas_UML/`, falta enlazarlas) y `verificacion_previa.pdf` (Sección 11 de la guía).

---

## Defensa oral

Los materiales de la presentación final se encuentran en:

```text
11_Defensa/
```

Incluye `presentacion.pptx`, `presentacion.pdf` y `guion.md` con el reparto de tiempos por integrante. Pendientes: `video_defensa.mp4` y `folleto_una_hoja.pdf`.

---

## Ética, evidencia y defensa

El SGCV-IA establece medidas para proteger la información obtenida durante el trabajo de campo y mantener un uso responsable de la evidencia.

### Protección de la evidencia

Las medidas adoptadas incluyen:

* Separación de evidencia pública y restringida.
* Cifrado AES-256 de la evidencia audiovisual identificable.
* Acceso restringido a los archivos originales.
* No almacenamiento de la contraseña dentro del repositorio.
* Registro de hashes SHA-256.
* Documentación técnica de los archivos.
* Uso de la evidencia con fines académicos.

La evidencia identificable no debe distribuirse públicamente.

### Consideraciones sobre IA

Los componentes de Inteligencia Artificial proporcionan apoyo al profesional veterinario.

Las salidas generadas por IA no deben considerarse diagnósticos definitivos ni sustituir la valoración profesional.

La decisión final sobre el paciente corresponde al profesional veterinario responsable.

### Evidencia para la defensa

La defensa del proyecto se sustenta en la relación entre los artefactos desarrollados:

```text
Trabajo de campo
      ↓
Elicitación de necesidades
      ↓
Especificación de requisitos
      ↓
Modelado
      ↓
Trazabilidad
      ↓
MVP
      ↓
Componentes de IA
      ↓
Verificación
```

Los principales artefactos que pueden utilizarse durante la defensa son:

| Evidencia          | Ubicación          |
| ------------------- | -------------------- |
| ERS/SRS             | `01_ERS/`           |
| Evidencia de campo  | `02_Evidencias/`    |
| Modelado            | `03_Modelado/`      |
| Trazabilidad        | `04_Trazabilidad/`  |
| MVP                 | `05_MVP/`           |
| Experimento         | `06_Experimento/`   |
| Paquete de datos    | `07_Datos/`         |
| Publicación         | `09_Publicacion/`   |
| Evidencia de autoría| `10_Autoria/`       |
| Materiales de defensa| `11_Defensa/`      |

La evidencia restringida no se expone públicamente durante la defensa. En caso de requerirse su comprobación, se utilizará el mecanismo de acceso establecido con el docente evaluador.

### Estado declarado

El proyecto diferencia entre artefactos disponibles y elementos todavía pendientes.

Actualmente:

* El ERS/SRS está disponible.
* La evidencia de campo está protegida y mayormente completa (16 entrevistas, 16 consentimientos), **con una salvedad pendiente**: 6 de los 6 documentos de la organización cliente.
* El modelado y la trazabilidad se encuentran documentados.
* El MVP se encuentra documentado y funcional.
* El protocolo experimental está registrado.
* Los datos crudos del componente empírico están depositados en `07_Datos/`, pero **crecieron de 60 a 210 respuestas de encuesta después de generar los resultados actualmente commiteados**.
* El pipeline de `07_Datos/scripts/` es técnicamente ejecutable con una sola orden (`run_all.R`), pero **no reproduce hoy los números citados en el manuscrito** hasta que se regenere; los scripts de `06_Experimento/scripts_analisis/` (saturación a nivel de código abierto) siguen además pendientes de consolidarse con ese pipeline.
* El manuscrito tiene contenido sustantivo, con pendientes puntuales antes del envío (ORCID y verificación cruzada de codificación ya resueltos) y depende de que se resuelva el punto anterior antes de darlo por cerrado.
* La evidencia de autoría (`10_Autoria/`) está mayormente completa: 8 de 12 elementos listos, 1 parcial (`capturas/`) y 3 pendientes (`notas_campo/`, `grabaciones/` reales, `verificacion_previa.pdf`).
* Los materiales de defensa (`11_Defensa/`) están parcialmente completos.

---

## Estado de los artefactos

| Artefacto             | Estado                     |
| ---------------------- | --------------------------- |
| ERS/SRS               | ✅ Disponible               |
| Evidencia de campo    | ✅ Protegida, 6/6 documentos de organización |
| Fichas técnicas       | ✅ Disponible               |
| Modelado              | ✅ Documentado              |
| Trazabilidad          | ✅ Documentada              |
| MVP                   | ✅ Documentado y funcional  |
| Registro experimental | ✅ Disponible               |
| Datos crudos          | ✅ Depositados |
| Scripts de análisis   | ✅ Ejecutables |
| Manuscrito final      |  ✅ Contenido sustantivo, pendientes puntuales |
| Evidencia de autoría  | 🟡 Parcial (8 de 12 elementos) |
| Materiales de defensa | 🟡 Parcial (3 de 5 archivos) |
| Zenodo                | ✅ DOI disponible           |
| Software Heritage     | ✅ Identificador disponible |
| Etiquetas de línea base | ✅ `v1.0-mvp-demo` y `v2B` anotadas |
| Identidades de autoría | ✅ Unificadas con `.mailmap` |

---

## Historial y versiones

El historial del repositorio fue reescrito el **27/08/2026** como medida de protección de la evidencia audiovisual identificable.

Los identificadores de los commits anteriores cambiaron como consecuencia de esta operación, aunque se conservaron sus fechas y autores originales.

Las modificaciones posteriores se registran mediante el historial de Git y el archivo:

```text
CHANGELOG.md
```

---

## Artefactos externos

### Zenodo

El proyecto cuenta con el siguiente DOI:

```text
10.5281/zenodo.22558095
```

Este identificador permite referenciar de forma persistente el conjunto de datos y/o código asociado al proyecto.

### OSF

```text
osf.io/r5p8d
```

Se utiliza como referencia externa para el registro y los artefactos experimentales asociados.

### Software Heritage

```text
swh:1:dir:61ecd6edd0a82807ae244055a854fa84afbd0810
```

Este identificador permite conservar una referencia persistente del contenido archivado del repositorio.

---

## Licencia

Las condiciones de uso y distribución del proyecto se encuentran definidas en:

```text
LICENSE
```

Antes de reutilizar o redistribuir cualquier artefacto del proyecto debe consultarse el archivo de licencia correspondiente.

La evidencia identificable almacenada en la zona restringida no debe redistribuirse públicamente.

---

## Cómo citar

La información bibliográfica oficial del proyecto se encuentra en:

```text
CITATION.cff
```

**DOI:**

```text
10.5281/zenodo.22558095
```

Se recomienda utilizar la información definida en `CITATION.cff` para realizar la citación correspondiente del proyecto.

---

## Equipo

**Amagua Sacón Robyn Willian** — Documentador
**Barrionuevo Fuentes Carlos Daniel** — Apoyo - Modelador
**Marcillo Ponce Alberto Jeanpool** — Analista líder
**Mesías Quijije Jhon Alexander** — Verificador
**Vera Gómez Anthony Alfredo** — Modelador

**Docente supervisor:** Dr. Guerrero Ulloa Gleiston Cicerón

---

## Estado del proyecto

**SGCV-IA se encuentra en desarrollo académico y evolución controlada.**

Este README refleja el estado declarado de los artefactos disponibles en el repositorio y distingue entre contenido disponible, contenido protegido y componentes que todavía se encuentran pendientes de implementación, ejecución o finalización.

**SGCV-IA se encuentra en desarrollo académico y evolución controlada.**

Este README refleja el estado declarado de los artefactos disponibles en el repositorio y distingue entre contenido disponible, contenido protegido y componentes que todavía se encuentran pendientes de implementación, ejecución o finalización.
