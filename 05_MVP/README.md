# MVP — Sistema de Recomendación

## Descripción

Este repositorio contiene el **Producto Mínimo Viable (MVP)** del proyecto, desarrollado como un prototipo funcional orientado a demostrar la interacción principal del sistema y su capacidad para generar recomendaciones a partir de los datos previamente establecidos.

El MVP permite visualizar una interfaz web interactiva desde la cual el usuario puede ingresar o seleccionar información disponible en el sistema y obtener recomendaciones generadas de acuerdo con los datos y criterios definidos para el proyecto.

El propósito de esta versión es validar el funcionamiento de las principales características planteadas antes de una implementación completa del sistema.

---

## Objetivo del MVP

El objetivo principal del MVP es demostrar de manera funcional la propuesta del sistema, permitiendo:

* Presentar una interfaz sencilla e intuitiva.
* Permitir la interacción del usuario con el sistema.
* Procesar los datos previamente definidos.
* Generar recomendaciones a partir de la información proporcionada.
* Visualizar los resultados directamente en la interfaz.
* Validar la funcionalidad principal antes del desarrollo de una versión completa.

---

## Funcionalidades principales

El prototipo cuenta con las siguientes funcionalidades:

### 1. Interfaz de usuario

El sistema dispone de una interfaz web que permite al usuario interactuar con las diferentes opciones disponibles del MVP.

### 2. Ingreso y selección de datos

El usuario puede proporcionar o seleccionar los datos necesarios para realizar el proceso de recomendación.

### 3. Procesamiento de información

El sistema utiliza los datos asignados previamente para realizar el procesamiento correspondiente.

### 4. Generación de recomendaciones

A partir de los datos proporcionados, el MVP genera recomendaciones de acuerdo con los criterios establecidos en la lógica del prototipo.

### 5. Visualización de resultados

Las recomendaciones obtenidas son mostradas directamente en la interfaz para que el usuario pueda interpretarlas y utilizarlas como referencia para la toma de decisiones.

---

## Tecnologías utilizadas

El MVP fue desarrollado utilizando principalmente:

* **HTML5** — Estructura de la interfaz.
* **CSS3** — Diseño y estilos visuales.
* **JavaScript** — Lógica de interacción, procesamiento de datos y generación de recomendaciones.

La implementación actual se encuentra integrada dentro del archivo HTML del prototipo, por lo que no requiere una instalación compleja de dependencias externas para su ejecución básica.

---

## Estructura del proyecto

La estructura principal del repositorio se organiza de la siguiente manera:

```text
MVP/
│
├── Untitled-1.html
├── README.md
└── RF(1).docx
```

> La estructura puede variar dependiendo de los archivos adicionales que sean incorporados posteriormente al repositorio.

### Descripción de archivos

| Archivo           | Descripción                                                                                             |
| ----------------- | ------------------------------------------------------------------------------------------------------- |
| `Untitled-1.html` | Archivo principal que contiene el prototipo web funcional del MVP.                                      |
| `README.md`       | Documento con la descripción, funcionamiento y características del proyecto.                            |
| `RF(1).docx`      | Documento relacionado con los requerimientos funcionales utilizados como referencia para el desarrollo. |

---

## Requisitos

Para ejecutar el MVP únicamente se necesita:

* Un computador.
* Un navegador web actualizado.
* Acceso a los archivos del proyecto.

Se recomienda utilizar navegadores como:

* Google Chrome
* Microsoft Edge
* Mozilla Firefox

No es necesario instalar un servidor web ni configurar una base de datos para ejecutar esta versión del prototipo.

---

## Instalación y ejecución

### Opción 1 — Ejecución directa

1. Descargar o clonar este repositorio.
2. Ubicar el archivo:

```text
Untitled-1.html
```

3. Hacer doble clic sobre el archivo.
4. El navegador abrirá el prototipo.
5. Interactuar con las opciones disponibles.
6. Ingresar o seleccionar los datos solicitados.
7. Revisar las recomendaciones generadas por el sistema.

### Opción 2 — Desde GitHub

También es posible descargar el repositorio desde GitHub y ejecutar el archivo HTML localmente.

```bash
git clone URL_DEL_REPOSITORIO
```

Después de descargar el proyecto, abrir el archivo `Untitled-1.html` utilizando un navegador web.

---

## Funcionamiento del MVP

El funcionamiento general del prototipo sigue el siguiente flujo:

```text
┌──────────────────────┐
│      Usuario         │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│ Ingreso / selección  │
│       de datos       │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│ Procesamiento de     │
│      información     │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│ Aplicación de reglas │
│ de recomendación     │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│ Recomendación        │
│      generada        │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│ Visualización del    │
│      resultado       │
└──────────────────────┘
```

---

## Alcance del MVP

Esta versión corresponde a un **prototipo funcional**, por lo que su objetivo principal es demostrar la funcionalidad central del sistema.

El MVP permite comprobar:

* La interacción básica con el usuario.
* El flujo principal del sistema.
* El procesamiento de información.
* La generación de recomendaciones.
* La presentación de resultados.

Sin embargo, esta versión no representa necesariamente la implementación definitiva del sistema.

---

## Limitaciones

Entre las principales limitaciones de esta versión se encuentran:

* Los datos utilizados se encuentran previamente definidos dentro del prototipo.
* No se cuenta con una base de datos externa.
* No existe autenticación de usuarios.
* La información no se almacena de manera permanente.
* La lógica de recomendación corresponde a una implementación inicial.
* El prototipo se encuentra orientado principalmente a demostrar la funcionalidad principal del proyecto.

Estas limitaciones corresponden al alcance establecido para un Producto Mínimo Viable.

---

## Requerimientos funcionales relacionados

El desarrollo del MVP toma como referencia los requerimientos funcionales definidos para el proyecto.

Entre las características principales consideradas se encuentran:

* Permitir la interacción del usuario con el sistema.
* Recibir información necesaria para el proceso.
* Procesar los datos proporcionados.
* Generar recomendaciones.
* Mostrar los resultados de manera comprensible.

Los requerimientos detallados pueden consultarse en el documento correspondiente incluido en el repositorio.

---

## Evidencia del funcionamiento

Para comprobar el funcionamiento del MVP se pueden incluir capturas de pantalla que evidencien:

1. Pantalla inicial del prototipo.
2. Ingreso o selección de datos.
3. Procesamiento o interacción principal.
4. Resultado de la recomendación.
5. Funcionamiento general del sistema.

Las evidencias permiten verificar que el prototipo cumple con el flujo funcional planteado.

---

## Estado del proyecto

**Estado:** MVP funcional

El prototipo se encuentra desarrollado y permite ejecutar el flujo principal de interacción y generación de recomendaciones.

Las futuras versiones pueden incorporar mejoras relacionadas con:

* Persistencia de información.
* Base de datos.
* Autenticación.
* Mayor cantidad de datos.
* Algoritmos de recomendación más avanzados.
* Mejoras de interfaz y experiencia de usuario.
* Integración con servicios externos.
* Implementación completa del sistema.

---

## Equipo de desarrollo

El proyecto fue desarrollado por:

* **Díaz Pontón Steven Santiago**
* **Vera Gómez Anthony Alfredo**
* **Tigasi Sampedro Paul Alexander**

---

## Repositorio

El código fuente y los archivos correspondientes al MVP se encuentran disponibles en el repositorio de GitHub del proyecto.

---

## Conclusión

Este MVP representa una primera versión funcional del sistema, enfocada en demostrar la propuesta principal y validar el flujo de interacción con el usuario. Mediante una interfaz web integrada en HTML, el prototipo permite trabajar con datos previamente establecidos y generar recomendaciones de acuerdo con la lógica definida. Esta implementación constituye una base para futuras etapas de desarrollo, en las cuales podrán incorporarse nuevas funcionalidades, almacenamiento persistente, una arquitectura más completa y mejoras en la experiencia del usuario.
