# README del conjunto de datos — SGCV-IA

Paquete de replicación para: *Explainability as a non-functional requirement in an AI-assisted veterinary clinical system: a case study* (Marcillo Ponce, Amagua Sacón, Vera Gómez, Mesías Quijije, Barrionuevo Fuentes, Guerrero Ulloa).

Este documento describe el contenido del depósito Zenodo, siguiendo los principios FAIR (Findable, Accessible, Interoperable, Reusable) y las instrucciones de citación de software de Force11.

## 1. Alcance del paquete

Este depósito contiene la evidencia empírica **anonimizada** y los artefactos de análisis del componente de Ingeniería de Requerimientos del proyecto SGCV-IA (Sistema de Gestión para Clínicas Veterinarias con Inteligencia Artificial), correspondiente al Enfoque 3 (explicabilidad). No incluye material identificable (audio, video, consentimientos originales, nombres reales) — ese material permanece en la zona restringida del repositorio del equipo, fuera de este depósito público.

## 2. Diccionario de datos

| Archivo / carpeta | Formato | Descripción | Filas / unidades |
|---|---|---|---|
| `transcripciones/P01.md` … `P16.md` | Markdown | Transcripción anonimizada de cada entrevista semiestructurada, con seudónimo de participante (P01–P16) en lugar de nombre propio | 16 archivos |
| `codificacion_tematica_SGCV-IA.csv` | CSV | Codificación abierta: un fragmento textual por fila, con su código, categoría, requisito derivado, ID de evidencia (participante) y analista codificador | 167 filas |
| `codificacion_axial_SGCV-IA.csv` | CSV | Consolidación de los 167 códigos abiertos en 50 códigos axiales agrupados en 7 categorías, con la evidencia (participantes) que sostiene cada código axial | 50 códigos axiales |
| `curva_saturacion_axial.pdf` / `.png` | PDF / PNG | Curva de saturación temática a nivel de codificación cerrada (axial): códigos nuevos por entrevista y acumulado, con el umbral de saturación (≤5% del acumulado en las últimas 3 entrevistas) | — |
| `03_curva_saturacion_codigos_abiertos.R` | Script R | Script reproducible que calcula la curva de saturación a nivel de código abierto directamente desde `codificacion_tematica_SGCV-IA.csv`; ningún número de la tabla/figura resultante se escribe a mano | — |
| `tabla_saturacion_codigos_abiertos.csv` | CSV | Salida del script anterior: códigos nuevos y acumulados por entrevista, a nivel de código abierto | 16 filas |
| `curva_saturacion_codigos_abiertos.png` | PNG | Curva de saturación a nivel de codificación abierta (evidencia de proceso/transparencia metodológica; no cumple el criterio de saturación por sí sola — ver manuscrito, Sección 4.1) | — |
| `matriz_trazabilidad.csv` | CSV | Matriz de trazabilidad extendida: relación entre requisitos (RF/RNF/RST), su origen (entrevista, ley, documento, arquitectura o elaboración propia), casos de uso, historias de usuario, criterios de aceptación, componente y mockup asociado | 63 filas |
| `referencias.bib` | BibTeX | Referencias bibliográficas citadas en el manuscrito | 45 entradas |

## 3. Esquema de seudonimización

Los identificadores de participante (P01 a P16) sustituyen cualquier nombre propio, cédula, o dato directamente identificable en todos los archivos de este paquete. El procedimiento completo de anonimización se documenta en `ANONYMIZATION.md`.

## 4. Cómo citar este conjunto de datos

Citar usando los metadatos de `CITATION.cff` en la raíz del repositorio, o mediante el DOI persistente asignado por Zenodo al momento del depósito (ver `README.md` del repositorio principal para el DOI vigente).

## 5. Licencia

Los datos de este paquete se distribuyen bajo licencia Creative Commons Attribution 4.0 International (CC BY 4.0). El código y los scripts de análisis se distribuyen bajo licencia MIT, según corresponda a cada archivo.

## 6. Contacto

Para preguntas sobre este conjunto de datos, contactar al autor de correspondencia (ver `CITATION.cff`) a través del correo institucional de la Universidad Técnica Estatal de Quevedo.
