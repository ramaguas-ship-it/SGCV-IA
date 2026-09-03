# SGCV-IA — Sistema de Gestión para Clínicas Veterinarias con Inteligencia Artificial

Especificación de Requisitos de Software (ERS/SRS) conforme a **ISO/IEC/IEEE 29148:2018**.

> **Proyecto Fin de Curso · Ingeniería de Requerimientos (ISR-401) · 4to Nivel**
> Universidad Técnica Estatal de Quevedo · Facultad de Ciencias de la Computación
> Período académico 2026–2027

---

## Dónde está el proyecto

Todo el contenido del proyecto se encuentra organizado en las carpetas correspondientes del repositorio.

```text
PFC-ISR401-PE5-SGCVIA/
├── README.md
├── LICENSE
├── CITATION.cff
├── CHANGELOG.md
├── .gitignore
├── checksums.sha256
│
├── 01_ERS/
├── 02_Evidencias/
├── 03_Modelado/
├── 04_Trazabilidad/
├── 05_MVP/
├── 06_Experimento/
├── 09_Publicacion/
├── 08_Etica/
└── ...
```

Las carpetas contienen los artefactos correspondientes a la especificación de requisitos, evidencia de campo, modelado, trazabilidad, MVP, experimentación y publicación.

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

---

## Equipo SGCV-IA

| Integrante                        | Rol               |
| --------------------------------- | ----------------- |
| Amagua Sacón Robyn Willian        | Documentador      |
| Barrionuevo Fuentes Carlos Daniel | Apoyo - Modelador |
| Marcillo Ponce Alberto Jeanpool   | Analista líder    |
| Mesías Quijije Jhon Alexander     | Verificador       |
| Vera Gómez Anthony Alfredo        | Modelador         |

**Docente supervisor:** Dr. Guerrero Ulloa Gleiston Cicerón

---

## 🔗 Enlaces principales

| Recurso                | Ubicación                             |
| ---------------------- | ------------------------------------- |
| ERS/SRS completo       | `01_ERS/ERS_SRS_2B_v2.0.pdf`          |
| Modelado               | `03_Modelado/`                        |
| Matriz de trazabilidad | `04_Trazabilidad/`                    |
| MVP funcional          | `05_MVP/README.md`                    |
| Registro experimental  | `06_Experimento/OSF_Registration.pdf` |
| Scripts de análisis    | `06_Experimento/scripts_analisis/`    |
| Manuscrito             | `09_Publicacion/`                     |
| Evidencia de campo     | `02_Evidencias/`                      |
| Fichas técnicas        | `02_Evidencias/fichas_tecnicas.csv`   |
| Licencia               | `LICENSE`                             |
| Citación               | `CITATION.cff`                        |

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
git clone https://github.com/amarcilloPoolgen/PFC-ISR401-PE5-SGCVIA.git
cd PFC-ISR401-PE5-SGCVIA
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
git clone https://github.com/amarcilloPoolgen/PFC-ISR401-PE5-SGCVIA.git
```

Un `git pull` sobre una copia antigua puede producir errores debido al cambio de historial.

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
    └── evidencias_restringidas.7z
```

La zona restringida contiene la evidencia audiovisual identificable obtenida durante las entrevistas, incluyendo videos, audios y consentimientos originales.

El archivo:

```text
evidencias_restringidas.7z
```

se encuentra protegido mediante **AES-256**.

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

**No reproducible todavía.**

El directorio:

```text
06_Experimento/scripts_analisis/
```

contiene actualmente un esqueleto documentado con la secuencia prevista de **8 scripts de análisis**.

Todavía no existe una implementación completa que permita ejecutar el análisis experimental de principio a fin.

Asimismo, los datos crudos necesarios para ejecutar el análisis todavía no se encuentran depositados en:

```text
06_Experimento/datos_crudos/
```

Por este motivo, el proyecto no declara actualmente que el análisis experimental sea reproducible.

Esta sección será actualizada cuando los scripts y datos necesarios se encuentren disponibles.

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

---

## Publicación

El material destinado a la publicación se encuentra en:

```text
09_Publicacion/
```

Actualmente esta carpeta contiene el esqueleto documentado destinado al manuscrito.

El manuscrito final se encuentra pendiente de completar.

Por este motivo, el repositorio no declara actualmente que exista una publicación finalizada.

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
| ------------------ | ------------------ |
| ERS/SRS            | `01_ERS/`          |
| Evidencia de campo | `02_Evidencias/`   |
| Modelado           | `03_Modelado/`     |
| Trazabilidad       | `04_Trazabilidad/` |
| MVP                | `05_MVP/`          |
| Experimento        | `06_Experimento/`  |
| Publicación        | `09_Publicacion/`  |

La evidencia restringida no se expone públicamente durante la defensa. En caso de requerirse su comprobación, se utilizará el mecanismo de acceso establecido con el docente evaluador.

### Estado declarado

El proyecto diferencia entre artefactos disponibles y elementos todavía pendientes.

Actualmente:

* El ERS/SRS está disponible.
* La evidencia de campo está protegida.
* El modelado y la trazabilidad se encuentran documentados.
* El MVP se encuentra documentado.
* El protocolo experimental está registrado.
* Los scripts de análisis todavía corresponden a un esqueleto documentado.
* Los datos crudos para la reproducción experimental están pendientes.
* El manuscrito final está pendiente.

---

## Estado de los artefactos

| Artefacto             | Estado                     |
| --------------------- | -------------------------- |
| ERS/SRS               | ✅ Disponible               |
| Evidencia de campo    | ✅ Protegida                |
| Fichas técnicas       | ✅ Disponible               |
| Modelado              | ✅ Documentado              |
| Trazabilidad          | ✅ Documentada              |
| MVP                   | ✅ Documentado              |
| Registro experimental | ✅ Disponible               |
| Scripts de análisis   |     Esqueleto documentado   |
| Datos crudos          |     Pendientes              |
| Manuscrito final      |     Pendiente               |
| Zenodo                | ✅ DOI disponible           |
| Software Heritage     | ✅ Identificador disponible |

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
