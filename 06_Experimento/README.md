# SGCV-IA — Sistema de Gestión para Clínicas Veterinarias con IA

Proyecto Fin de Curso · Ingeniería de Requerimientos [ISR-401] · 4to Nivel
Universidad Técnica Estatal de Quevedo (UTEQ) — Facultad de Ciencias de la Computación
Entrega 3 (2A) — Especificación de requisitos completa + componente empírico

## Descripción del sistema

SGCV-IA es un sistema real de gestión para clínicas veterinarias que centraliza
historiales clínicos, inventario, facturación, citas y comunicación con los
dueños de mascotas, e incorpora un módulo de sugerencias diagnósticas asistidas
por Inteligencia Artificial (RF-17, RF-18, RF-19), con revisión y aprobación
obligatoria del veterinario antes de aplicar cualquier sugerencia.

## Equipo

| Integrante | Rol en el proyecto |
|---|---|
| Anthony Alfredo Vera Gomez | Responsable de C8 (Prototipo funcional MVP) y C9 (Protocolo experimental) |
| Robyn Willian Amagua Sacon |Responsable de C7 (Recolección  de  datos de campos ) |
| ⟨Nombre integrante 3⟩ | ⟨Rol / criterios a cargo⟩ |
| ⟨Nombre integrante 4, si aplica⟩ | ⟨Rol / criterios a cargo⟩ |

## Enlaces clave

| Recurso | Enlace |
|---|---|
| Documento ERS/SRS completo | [`01_ERS/ERS_SRS_2A_v1.0.pdf`](./01_ERS/ERS_SRS_2A_v1.0.pdf) |
| Repositorio del MVP | ⟨enlace al repositorio Git del MVP⟩ |
| Registro previo del protocolo (OSF) | https://osf.io/r5p8d |
| Proyecto OSF asociado | https://osf.io/7hfxp |
| Conjunto de datos (Zenodo) | ⟨pendiente — se agrega al depositar en la Entrega 4⟩ |

## Componente empírico — Enfoque 3

Este proyecto trabaja el **Enfoque 3** (elicitación y validación de requisitos
de explicabilidad) sobre el módulo de sugerencias diagnósticas asistidas por
IA (RF-17/RF-18/RF-19), siguiendo el marco de Chazette y Schneider (2020) y
Chazette, Brunotte y Speith (2021, 2022).

El protocolo experimental completo está en
[`06_Experimento/protocolo.pdf`](./06_Experimento/protocolo.pdf), y su registro
previo (pre-registration) en OSF, con fecha anterior a la ejecución de la
Ronda 1, en [`06_Experimento/osf_registration.pdf`](./06_Experimento/osf_registration.pdf).

### Cómo reproducir el análisis

1. Los instrumentos aplicados (guion de validación, checklist de cobertura del
   marco, escala Likert, consentimiento) están en `06_Experimento/instrumentos/`.
2. Los datos crudos recolectados en las dos rondas de validación están en
   `06_Experimento/resultados/`.
3. Los scripts que generan las tablas y figuras a partir de esos datos están en
   `06_Experimento/scripts_analisis/` — ejecutar en orden según el `README.md`
   de esa subcarpeta.
4. `06_Experimento/prompts_llm/` no aplica a este proyecto (esa carpeta solo se
   usa en los Enfoques 1 y 2 de la guía, que involucran comparación directa
   con salidas de un LLM).

## Estructura del repositorio
