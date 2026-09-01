# SGCV-IA — Paquete de Replicación

**Dataset que acompaña a:** *Explainability as a non-functional requirement in an
AI-assisted veterinary clinical system: a case study*

**Autores:** Alberto Jeanpool Marcillo Ponce, Robyn Willian Amagua Sacón,
Anthony Alfredo Vera Gómez, Jhon Alexander Mesías Quijije, Carlos Daniel
Barrionuevo Fuentes, Gleiston Cicerón Guerrero Ulloa

**Filiación:** Facultad de Ciencias de la Computación, Universidad Técnica
Estatal de Quevedo (UTEQ), Quevedo, Ecuador

**Proyecto:** SGCV-IA — Sistema de Gestión de Clínica Veterinaria con
Inteligencia Artificial
**Organización objeto de estudio:** Veterinaria Macay
**Categoría de riesgo ético:** B — Datos personales
**Asignatura:** ISR-401 Ingeniería de Requisitos, UTEQ, 2026–2027 PPA

**DOI del repositorio:** https://doi.org/10.5281/zenodo.22238486

---

## 1. Descripción

Este depósito contiene los materiales de replicación del caso de estudio
SGCV-IA (sistema de gestión de clínica veterinaria con IA), correspondientes
a las fases de elicitación y análisis de requisitos. Esta carpeta
`dataset_zenodo/` contiene el procedimiento de anonimización aplicado, el
resumen del proceso de consentimiento informado y este diccionario de datos.
Las transcripciones anonimizadas, la codificación temática, el ERS y la
matriz de trazabilidad referenciados aquí se mantienen en las carpetas
correspondientes del proyecto (ver Sección 2).

Los formularios de consentimiento originales y cualquier material multimedia
que contenga información potencialmente identificable **no** se incluyen en
este paquete público; permanecen en una zona restringida y cifrada
(`02_Evidencias/00_Restringido/`), conforme al procedimiento de protección de
datos del proyecto y a la Ley Orgánica de Protección de Datos Personales del
Ecuador (LOPDP, Registro Oficial Suplemento 459, 26 de mayo de 2021) y su
Reglamento (Decreto Ejecutivo 904, 13 de noviembre de 2023). Ver `ETHICS.md`
y `ANONYMIZATION.md` en esta misma carpeta para el proceso de consentimiento
y el procedimiento de anonimización aplicado.

## 2. Contenido de esta carpeta

```
dataset_zenodo/
├── README_dataset.md    # este archivo — diccionario de datos e instrucciones de citación
├── ANONYMIZATION.md      # procedimiento de anonimización aplicado
└── ETHICS.md             # resumen del proceso de consentimiento informado
```

<!-- TODO: indicar aquí la ruta real (dentro o fuera del repositorio) donde
     quedan las transcripciones anonimizadas, la codificación temática, el
     ERS y la matriz de trazabilidad, para que quien reciba el DOI sepa
     dónde ubicar esos materiales -->

## 3. Esquema de seudonimización

Todo dato personal se codifica desde el momento de la transcripción con un
seudónimo basado en el rol funcional del participante dentro de la
organización, seguido de un número secuencial (p. ej. `Veterinario1`,
`Administrativo1`, `PropietarioMascota1`). Cuando la entrevista se referencia
como unidad de análisis (p. ej. en la curva de saturación temática), se usa
además el identificador secuencial transversal `Entrevistado1`...`Entrevistado16`.
Cada persona recibe un único seudónimo consistente en todos los documentos
donde aparece. La tabla de correspondencia entre seudónimo y nombre real se
almacena por separado en zona restringida y **no** se incluye en este
depósito. Ver `ANONYMIZATION.md` para el detalle completo del esquema.

## 4. Cómo citar

Si utilizas este dataset, por favor cita tanto el dataset como el manuscrito
asociado:

```
Marcillo Ponce, A.J., Amagua Sacón, R.W., Vera Gómez, A.A., Mesías Quijije,
J.A., Barrionuevo Fuentes, C.D., Guerrero Ulloa, G.C. (2026). SGCV-IA —
Paquete de Replicación [Data set]. Zenodo.
https://doi.org/10.5281/zenodo.22238486
```

<!-- TODO: completar la cita del manuscrito una vez publicado (revista, volumen, DOI) -->

## 5. Licencia

<!-- TODO: falta definir la licencia del dataset.
     Recomendación habitual para datos de investigación abiertos: CC-BY 4.0.
     Sustituir esta nota por la licencia elegida antes de subir a Zenodo. -->

## 6. Ética y protección de datos

La participación en las actividades de elicitación de requisitos fue
voluntaria y basada en consentimiento informado por escrito (Anexo A.3/C).
El proyecto cuenta con aval institucional de Veterinaria Macay. No se
publica el nombre, cargo específico ni ningún dato identificable de los
participantes. Los datos crudos identificables se destruyen al finalizar el
período académico o en un máximo de 24 meses, lo que ocurra primero, salvo
que se requiera un período mayor para publicación científica. Ver
`ETHICS.md` para el resumen completo del proceso de consentimiento y
`ANONYMIZATION.md` para el procedimiento de anonimización aplicado.

## 7. Contacto

Autor de correspondencia: Alberto Jeanpool Marcillo Ponce —
amarcillop@uteq.edu.ec

## 8. Agradecimientos

Los autores agradecen a los profesionales veterinarios y demás participantes
que contribuyeron a las actividades de elicitación de requisitos del
proyecto SGCV-IA.
