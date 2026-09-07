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

**Zenodo — DOI:** `10.5281/zenodo.22238486`

**OSF:** `osf.io/wkg32`

**Software Heritage:**

```text
swh:1:dir:61ecd6edd0a82807ae244055a854fa84afbd0810
```

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

**Datos de entrada completos; scripts en construcción.**

Los datos crudos ya están depositados en:

```text
07_Datos/datos_crudos/
```

e incluyen las 16 transcripciones de entrevista (completas) y el archivo `encuesta_respuestas_crudas.csv` con 60 respuestas de cuestionario repartidas en 4 perfiles (dueño de mascota: 26, veterinario: 18, auxiliar: 11, administrador: 5). Ningún perfil individual alcanza todavía el mínimo de **n ≥ 60 por perfil dominante** exigido por la guía.

El directorio:

```text
06_Experimento/scripts_analisis/
```

contiene por ahora **1 de los 10 scripts** previstos (`03_curva_saturacion_codigos_abiertos.R`, que genera la curva de saturación temática). Los 9 restantes, incluido el orquestador `run_all.R`, están pendientes de implementación.

Por este motivo, el proyecto no declara todavía que el análisis experimental completo sea reproducible de principio a fin con una sola orden.

Esta sección será actualizada cuando el resto de los scripts se encuentren disponibles.

---

## Registro experimental

El protocolo experimental previo se encuentra documentado en:

```text
06_Experimento/OSF_Registration.pdf
```

También se dispone del identificador de OSF:

```text
osf.io/wkg32
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

* Confirmación de ORCID de los 5 coautores.
* Elección formal de la revista o conferencia objetivo, notificada al docente (Sección 2 de la guía).
* Licencia definitiva del conjunto de datos y cita del manuscrito publicado.
* Verificación cruzada de las cifras de codificación temática citadas en el manuscrito contra `02_Evidencias/Codificacion_Tematica/` antes del envío final.

Detalle completo del estado por archivo en `09_Publicacion/README.md`.

---

## Evidencia de autoría

La carpeta `10_Autoria/` documenta que los artefactos entregados fueron producidos por el propio equipo, según la Guía de Desarrollo y Consolidación del PFC.

Elementos presentes: `bitacora_sesiones.csv`, `declaracion_uso_ia.md`, `aporte_individual.md`, `exif_inventario.csv`.

Pendientes: `capturas/`, fuentes editables de diagramas, `grabaciones/`, `notas_campo/`, `fotos_equipo/`, `doble_codificacion/`, `correspondencia/` y `verificacion_previa.pdf`.

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
* La evidencia de campo está protegida y completa (16 entrevistas, 16 consentimientos).
* El modelado y la trazabilidad se encuentran documentados.
* El MVP se encuentra documentado y funcional.
* El protocolo experimental está registrado.
* Los datos crudos del componente empírico están depositados en `07_Datos/`.
* Los scripts de análisis están en construcción (1 de 10 implementados).
* El manuscrito tiene contenido sustantivo, con pendientes puntuales antes del envío.
* La evidencia de autoría (`10_Autoria/`) está parcialmente completa.
* Los materiales de defensa (`11_Defensa/`) están parcialmente completos.

---

## Estado de los artefactos

| Artefacto             | Estado                     |
| ---------------------- | --------------------------- |
| ERS/SRS               | ✅ Disponible               |
| Evidencia de campo    | ✅ Protegida y completa     |
| Fichas técnicas       | ✅ Disponible               |
| Modelado              | ✅ Documentado              |
| Trazabilidad          | ✅ Documentada              |
| MVP                   | ✅ Documentado y funcional  |
| Registro experimental | ✅ Disponible               |
| Datos crudos          | ✅ Depositados (`07_Datos/`)|
| Scripts de análisis   | 🟡 En construcción (1 de 10) |
| Manuscrito final      | 🟡 Contenido sustantivo, pendientes puntuales |
| Evidencia de autoría  | 🟡 Parcial (4 de 12 elementos) |
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
10.5281/zenodo.22238486
```

Este identificador permite referenciar de forma persistente el conjunto de datos y/o código asociado al proyecto.

### OSF

```text
osf.io/wkg32
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
10.5281/zenodo.22238486
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
