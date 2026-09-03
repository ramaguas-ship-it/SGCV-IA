# ANONYMIZATION.md — SGCV-IA

## Procedimiento de anonimización y seudonimización aplicado

**Proyecto:** SGCV-IA — Sistema de Gestión de Clínica Veterinaria con Inteligencia Artificial
**Categoría de riesgo ético:** B — Datos personales
**Base normativa:** Ley Orgánica de Protección de Datos Personales del Ecuador (LOPDP, Registro Oficial Suplemento 459, 26 de mayo de 2021) y su Reglamento (Decreto Ejecutivo 904, 13 de noviembre de 2023).

## 1. Alcance

Este procedimiento aplica a todos los datos personales recolectados de propietarios de mascotas, personal veterinario y administrativo de Veterinaria Macay durante el trabajo de campo del proyecto SGCV-IA, incluyendo la ronda terminal de entrevistas cerrada en la Entrega 4 (2B), que alcanzó el mínimo de **16 entrevistas acumuladas** exigido por la guía (Sección 3, tabla de evidencia mínima terminal).

## 2. Minimización de datos en origen

Desde el diseño del instrumento de recolección (guía de entrevista semi-estructurada, Anexo A.2), no se solicitan ni registran: números de cédula, direcciones exactas, ni datos financieros de propietarios reales. Si un entrevistado menciona espontáneamente un caso real de un propietario o mascota, la respuesta se anota de forma genérica, sin nombres.

## 3. Esquema de seudonimización

- **Codificación por rol funcional:** todo dato personal recolectado en entrevistas, encuestas o sesiones de validación se codifica **desde el momento de la transcripción** con un seudónimo basado en el rol del participante dentro de la organización, seguido de un número secuencial. Ningún nombre propio, apodo ni dato identificable aparece en ningún documento de zona pública [P]. Esquema aplicado:
  - `Gerente1`, `Gerente2`... — representante(s) o gerencia de Veterinaria Macay.
  - `Veterinario1`, `Veterinario2`... — personal veterinario entrevistado.
  - `Administrativo1`, `Administrativo2`... — personal administrativo/recepción.
  - `PropietarioMascota1`, `PropietarioMascota2`... — propietarios de mascotas voluntarios (entrevista o encuesta).
  - `Stakeholder1`, `Stakeholder2`... — uso genérico para interesados cuyo rol específico no requiere diferenciarse (p. ej. en diagramas de contexto o mapas de stakeholders).
  - `Entrevistado1`...`Entrevistado16` — identificador secuencial transversal cuando se referencia la entrevista como unidad de análisis (p. ej. en la curva de saturación temática), independientemente del rol.
  - `Coordinador1`, `Director1` — si aplica a roles jerárquicos específicos mencionados durante la elicitación.
- **Regla de aplicación:** cada persona recibe **un único seudónimo consistente** en todos los documentos donde aparece (transcripción, codificación temática, actas de validación, cuestionario). No se reutiliza el mismo seudónimo para dos personas distintas ni se le asignan dos seudónimos a la misma persona.
- **Archivo de correspondencia:** la tabla que vincula cada seudónimo (Gerente1, Veterinario2, etc.) con el nombre real se almacena **por separado** del resto de la evidencia, en `02_Evidencias/00_Restringido/` (zona restringida cifrada), con acceso limitado a los cinco integrantes del equipo y al docente responsable. Este archivo **no** se incluye en el paquete FAIR depositado en Zenodo.
- **Transcripciones:** las transcripciones anonimizadas en `02_Evidencias/Transcripciones/` sustituyen cualquier nombre propio, apodo o forma de tratamiento personal (p. ej. "el Dr. Macay dijo...") por el seudónimo de rol correspondiente (p. ej. "Gerente1 dijo...") antes de ser consideradas zona pública [P].

## 4. Datos excluidos por diseño

- Consentimientos (zona pública): cédula y firma **enmascaradas**; solo el código de participante queda visible.
- Fotografías: sin rostros ni coordenadas GPS.
- Cuestionario a propietarios: anónimo desde el diseño (no recolecta nombre, cédula ni datos de contacto).
- Menores de edad: no se recolectan datos identificables (nombre completo, fotografías, dirección) bajo ninguna circunstancia, conforme a la Política de manejo de datos de menores (Anexo B.5).

## 5. Verificación técnica aplicada

Para cada una de las 16 entrevistas:
- Verificación de hash SHA-256 antes del cifrado, registrado en `checksums.sha256` y `fichas_tecnicas.csv`.
- Confirmación con `ffprobe` de que cada archivo de audio/video declarado corresponde a contenido real (duración > 0, códec correcto) — evita el patrón de evidencia falsificada que activa el gatekeeper G4.

## 6. Datos que salen del entorno cifrado (zona pública [P])

Solo se promueven a zona pública, y por tanto son candidatos al paquete Zenodo, los siguientes derivados **ya anonimizados**:
- Transcripciones con seudónimos.
- Codificación temática (sin vínculo a identidad).
- Respuestas de cuestionario (ya anónimas desde el diseño).
- Consentimientos enmascarados (cédula/firma cubiertas, código visible).
- Fichas técnicas de archivos multimedia (metadatos, no contenido identificable).

Los originales identificables (audio/video sin anonimizar, consentimientos con firma visible) permanecen exclusivamente en `02_Evidencias/00_Restringido/`, cifrados con AES-256, y **no se depositan en Zenodo**.

## 7. Retención y destrucción

Los datos crudos identificables se destruyen al finalizar el período académico o en un máximo de 24 meses (lo que ocurra primero), salvo que se requiera un período mayor para publicación científica, en cuyo caso se informa al Vicerrectorado Académico (conforme al Plan de Gestión de Datos, Anexo A.4). Solo los datos agregados, disociados y anonimizados descritos en la Sección 6 se conservan más allá de ese período.
