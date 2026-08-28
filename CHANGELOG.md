# Changelog

Formato basado en [Keep a Changelog](https://keepachangelog.com/es-ES/1.1.0/).

## [2B-parcial] - 2026-08-27

### Añadido
- Cifrado AES-256 de evidencia audiovisual identificable en
  `02_Evidencias/00_Restringido/evidencias_restringidas.7z` (Audio,
  Consentimientos, Video de 3 entrevistados con material completo).
- Clausula de exclusion de `00_Restringido/` en LICENSE.
- `checksums.sha256` regenerado (estaba vacio) con hash del paquete
  cifrado, transcripciones y fotos de entorno.
- `fichas_tecnicas.csv` con duracion, codec, tamano y hash SHA-256 de
  cada archivo de audio/video/consentimiento, via ffprobe.
- ERS renombrado a la convencion oficial `ERS_SRS_2B_v2.0`.
- Esqueleto documentado de `09_Defensa/`, `07_Publicacion/` y
  `06_Experimento/scripts_analisis/` (placeholders vacios con checklist
  de contenido pendiente).
- Placeholders del paquete etico completo (`A01_Anexo.pdf` a
  `A13_Anexo.pdf`, `Aval_Institucional.pdf`, `Adenda_Segunda_Ronda.pdf`)
  con `README_Etica.md` documentando el estado.

### Corregido
- 2 videos de entrevista de EdisonMonacada y 8 de JaimeOrtega, mas 2
  archivos sueltos, resultaron ser placeholders de 2 bytes (evidencia
  corrupta). Documentados en
  `02_Evidencias/00_Restringido/_PENDIENTE_VideoOriginal/README.md`.

### Pendiente critico para el cierre de 2B
- Completar entrevistas hasta el minimo de 16 (24 recomendado) --
  actualmente 8 confirmadas.
- Cuestionario: alcanzar n>=60 por perfil dominante (actualmente ~30
  repartidas entre 4 perfiles) o justificar con power calculation.
- Sesion de member checking (ausente).
- 5 sesiones adicionales de walkthrough (actualmente 1 de 6 minimas).
- Curva de saturacion tematica (CSV + figura).
- Codigo real en `scripts_analisis/` (solo esqueleto documentado).
- Contenido real del manuscrito en `07_Publicacion/` (solo esqueleto).
- Deposito Zenodo con DOI, SWHID de Software Heritage,
  `fair_assessment.pdf`.
- Contenido real de `08_Etica/`: Anexo A, Aval Institucional y Adenda
  (solo placeholders creados).
- ERS: requisitos legales y de explicabilidad pendientes de completar.
- Videos de Edison Moncada y Jaime Ortega: confirmar si existe el
  material original o excluir del conteo de entrevistas.

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
