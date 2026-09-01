# SGCV-IA — Sistema de Gestión para Clínicas Veterinarias con IA

Proyecto Fin de Curso · Ingeniería de Requerimientos [ISR-401] · 4to Nivel
Universidad Técnica Estatal de Quevedo (UTEQ) — Facultad de Ciencias de la Computación
**Entrega 2B — Especificación de requisitos + componente empírico**

## Descripción del sistema

SGCV-IA es un sistema real de gestión para clínicas veterinarias que centraliza historiales clínicos, inventario, facturación, citas y comunicación con los dueños de mascotas. Además, incorpora un módulo de sugerencias diagnósticas asistidas por Inteligencia Artificial (RF-17, RF-18, RF-19), con revisión y aprobación obligatoria del veterinario antes de aplicar cualquier sugerencia.

## Equipo

| Integrante                       | Rol en el proyecto                                                        |
| -------------------------------- | ------------------------------------------------------------------------- |
| Anthony Alfredo Vera Gomez       | Responsable de C8 (Prototipo funcional MVP) y C9 (Protocolo experimental) |
| Robyn Willian Amagua Sacon       | Responsable de C7 (Recolección de datos de campo)                         |
| Barrionuevo Fuentes Carlos Daniel| Responsable de criterios y actividades de la Entrega 2B                   |
| Marcillo Ponce Alberto Jeanpool  |  Responsable de criterios y actividades de la Entrega 2B                  |

## Enlaces clave

| Recurso                             | Enlace                                                        |
| ----------------------------------- | ------------------------------------------------------------- |
| Documento ERS/SRS 2B                | [`01_ERS/ERS_SRS_2B_v2.0.pdf`](../01_ERS/ERS_SRS_2B_v2.0.pdf) |
| Documento ERS/SRS 2B en LaTeX       | [`01_ERS/ERS_SRS_2B_v2.0.tex`](../01_ERS/ERS_SRS_2B_v2.0.tex) |
| Repositorio del MVP                 | ⟨enlace al repositorio Git del MVP⟩                           |
| Registro previo del protocolo (OSF) | https://osf.io/r5p8d                                          |
| Proyecto OSF asociado               | https://osf.io/7hfxp                                          |
| Registro previo en el repositorio   | [`OSF_Registration.pdf`](./OSF_Registration.pdf)              |
| Datos crudos                        | [`datos_crudos/`](./datos_crudos/)                            |
| Datos procesados                    | [`datos_procesados/`](./datos_procesados/)                    |
| Resultados                          | [`resultados/`](./resultados/)                                |
| Scripts de análisis                 | [`scripts_analisis/`](./scripts_analisis/)                    |
| Conjunto de datos (Zenodo)          | Pendiente de depósito para la Entrega 4                       |

## Componente empírico — Enfoque 3

Este proyecto trabaja el **Enfoque 3** (elicitación y validación de requisitos de explicabilidad) sobre el módulo de sugerencias diagnósticas asistidas por IA (RF-17/RF-18/RF-19), siguiendo el marco de Chazette y Schneider (2020) y Chazette, Brunotte y Speith (2021, 2022).

El protocolo de investigación y su registro previo constituyen la base del componente empírico. El registro previo fue realizado antes de la ejecución de las rondas de validación y se encuentra disponible en OSF y en el repositorio.

El documento del protocolo utilizado en el proyecto se encuentra en [`Protocolo_SGCV-IA_2A.pdf`](./Protocolo_SGCV-IA_2A.pdf). Aunque el archivo conserva la denominación **2A** por corresponder a la versión en la que fue elaborado, el presente README y la documentación principal corresponden a la **Entrega 2B**.

## Cómo reproducir el análisis

1. Los instrumentos aplicados (guion de validación, checklist de cobertura del marco, escala Likert y consentimiento) se encuentran en [`instrumentos/`](./instrumentos/).
2. Los datos crudos recolectados durante las rondas de validación se encuentran en [`datos_crudos/`](./datos_crudos/).
3. Los datos procesados se encuentran en [`datos_procesados/`](./datos_procesados/).
4. Los resultados generados a partir del análisis se encuentran en [`resultados/`](./resultados/).
5. Los scripts que generan las tablas y figuras se encuentran en [`scripts_analisis/`](./scripts_analisis/). Ejecutarlos en el orden indicado en el `README.md` de esa subcarpeta.
6. [`prompts_llm/`](./prompts_llm/) no aplica a este proyecto, debido a que esta carpeta corresponde a los Enfoques 1 y 2 de la guía, que involucran comparación directa con salidas de un LLM.

## Estado de la Entrega 2B

La documentación de esta carpeta se encuentra actualizada para la **Entrega 2B**. Se mantiene el material experimental previamente registrado y se organiza la evidencia disponible para facilitar la trazabilidad, reproducción y revisión del componente empírico.

## Estructura del repositorio

```text
06_Experimento/
├── README.md
├── OSF_Registration.pdf
├── Protocolo_SGCV-IA_2A.pdf
├── osf_deviations.pdf
├── instrumentos/
├── datos_crudos/
├── datos_procesados/
├── resultados/
├── scripts_analisis/
└── prompts_llm/
```
