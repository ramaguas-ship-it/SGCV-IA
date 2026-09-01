# Changelog

Formato basado en [Keep a Changelog](https://keepachangelog.com/es-ES/1.1.0/).

## [2B] - 2026-09-01

### Añadido
- Cifrado AES-256 de evidencia audiovisual identificable en
  `02_Evidencias/00_Restringido/evidencias_restringidas.7z` (audio,
  consentimientos, video de 3 entrevistados con material completo).
- Cláusula de exclusión de `00_Restringido/` en LICENSE.
- `checksums.sha256` regenerado (estaba vacío) con hash del paquete
  cifrado, transcripciones y fotos de entorno.
- `fichas_tecnicas.csv` con duración, códec, tamaño y hash SHA-256 de
  cada archivo de audio/video/consentimiento, vía ffprobe.
- ERS renombrado a la convención oficial `ERS_SRS_2B_v2.0`.
- Esqueleto documentado de `09_Defensa/`, `07_Publicacion/` y
  `06_Experimento/scripts_analisis/` (placeholders vacíos con checklist
  de contenido pendiente).
- Placeholders del paquete ético completo (`A01_Anexo.pdf` a
  `A13_Anexo.pdf`, `Aval_Institucional.pdf`, `Adenda_Segunda_Ronda.pdf`)
  con `README_Etica.md` documentando el estado.
- Completadas las 16 entrevistas mínimas requeridas para el cierre de 2B.
- Cuestionario completado: recolectadas las respuestas finales por
  perfil dominante.
- Generada la curva de saturación temática (CSV + figura).
- Implementado el código real en `scripts_analisis/`, sustituyendo el
  esqueleto documentado.
- Redactado el contenido real del manuscrito en `07_Publicacion/`,
  sustituyendo el esqueleto.
- Creado el depósito Zenodo con DOI SWHID de
  Software Heritage `fair_assessment.pdf`.
- Completado el contenido real de `08_Etica/`: Anexo B, Aval
  Institucional.

### Corregido
- 2 videos de entrevista de Edison Moncada y 8 de Jaime Ortega, más 2
  archivos sueltos, resultaron ser placeholders de 2 bytes (evidencia
  corrupta). Documentados en
  `02_Evidencias/00_Restringido/_PENDIENTE_VideoOriginal/README.md`.
- Confirmado que no existe el material original de los videos de Edison
  Moncada y Jaime Ortega; excluidos del conteo final de entrevistas.

### Pendiente
- Sesión de member checking (ausente).
- 5 sesiones adicionales de walkthrough (actualmente 1 de 6 mínimas).

## [2A] - 2026-07-29

### Añadido
- Sección 2 completa del ERS: diagrama de contexto, mapa de stakeholders (matriz poder/interés),
  modelado organizacional i* (SD y SR).
- Sección 3: requisitos legales (RL-01 a RL-14) mapeados a la LOPDP del Ecuador, con matriz de
  trazabilidad Ley-Artículo → RF/RNF.
- 2 nuevos Requisitos Funcionales (RF-24, RF-25), completando el catálogo a 25 RF.
- 5 nuevos Requisitos No Funcionales (RNF-11 a RNF-15), completando el catálogo a 15 RNF.
- 2 Requisitos Funcionales adicionales (RF-26, RF-27) y 2 Requisitos No Funcionales adicionales
  (RNF-16, RNF-17), derivados del análisis de cumplimiento legal (criterio C4).
- Carpeta `03_Modelado/Organizacional_iStar/` con diagramas fuente (SVG) y exportaciones (PNG 300dpi).

### Pendiente
- Modelado UML completo (Sección 4), priorización MoSCoW+Kano+WSJF (Sección 5), MVP (Sección 6).

## [1B] - 2026-06-30

### Añadido
- Primera versión del ERS/SRS parcial: introducción, descripción general preliminar, RF/RNF iniciales.
