# 03_Modelado/

## Qué contiene esta carpeta

Todos los artefactos de modelado del SGCV-IA: diagramas UML, modelado organizacional (i*) y mockups de interfaz. Sirven de puente entre el ERS/SRS (`01_ERS/`) y la implementación (`05_MVP/`), y deben quedar reflejados en `04_Trazabilidad/matriz_trazabilidad.csv`.

Convención de esta carpeta: **cada diagrama se entrega con su fuente editable junto al export**, no solo la imagen final. Esto es lo que exige el punto A3 de evidencia de autoría (`10_Autoria/`) — sin el archivo fuente no hay forma de comprobar que el diagrama se construyó en el equipo y no se descargó ya hecho.

```text
03_Modelado/
├── Diagramas_UML/          — 23 diagramas UML (uno por subcarpeta)
├── Organizacional_iStar/   — modelado organizacional (marco i*)
└── Mockups/                — 33 mockups de interfaz (ver Mockups/Readme.md)
```

## Diagramas_UML/

23 subcarpetas, cada una con su diagrama en tres formatos: `.drawio` (fuente editable, abrir en [draw.io](https://app.diagrams.net/)), `.png` (export para documentos) y `.svg` (export vectorial). Excepción: `CU_Detallados_Especificacion/` no es un diagrama sino un PDF de 10 páginas con la especificación textual detallada de cada caso de uso.

| Subcarpeta | Contenido |
|---|---|
| `CU00_General` | Diagrama de casos de uso general del sistema |
| `CU01_Login` a `CU10_Billing_Collection` | Un diagrama de caso de uso detallado por cada CU (login, atención clínica, historial, inventario, empleados, IA, seguimiento nutricional, comunicación con cliente, notificaciones, facturación/cobro) — corresponden 1 a 1 con las imágenes `CU00`–`CU10` insertadas en el ERS (`01_ERS/media/`) |
| `CU_Detallados_Especificacion` | Especificación textual detallada de los 11 casos de uso (PDF, 10 páginas) |
| `Component_Diagram` | Diagrama de componentes |
| `Deployment_Diagram` | Diagrama de despliegue |
| `DA01_Clinical_Care`, `DA02_Billing_Collection` | Diagramas de actividad (atención clínica, facturación/cobro) |
| `DIAGRAM_SEQUENCE_CLINICAL_CARE`, `DIAGRAM_SEQUENCE_BILLING`, `DIAGRAM_SEQUENCE_REMINDER` | Diagramas de secuencia (atención clínica, facturación, recordatorios) |
| `Medical_Appointment_Status_Diagram`, `Product_State_Diagram` | Diagramas de estados (cita médica, producto/insumo) |
| `DC_Refined` | Diagrama de clases refinado |
| `DIAGRAM_CLASS_REFINED_v3.1` | Diagrama de clases refinado, versión 3.1 |

**Por confirmar:** `DC_Refined` y `DIAGRAM_CLASS_REFINED_v3.1` parecen ser dos versiones del mismo diagrama de clases. Si `v3.1` es la versión vigente (es la que está insertada en el ERS como `DIAGRAMA_DE_CLASES_REFINADO_v3_1.png`), conviene aclarar aquí si `DC_Refined` se conserva como historial de versión anterior o si ya no hace falta y puede eliminarse.

## Organizacional_iStar/

Modelado organizacional según el marco i* (Yu, 1997), con 4 diagramas, cada uno en tres formatos: `.py` (script Python + matplotlib que genera la imagen), `.png` y `.svg`.

| Archivo | Contenido |
|---|---|
| `Diagrama_Contexto` | Diagrama de contexto del sistema |
| `Matriz_Poder_Interes` | Matriz de poder-interés de stakeholders |
| `iStar_SD` | Diagrama de Dependencia Estratégica (Strategic Dependency) |
| `iStar_SR` | Diagrama de Razonamiento Estratégico (Strategic Rationale) |

**Por confirmar:** el encabezado de los tres scripts `.py` que revisé dice literalmente *"Reconstruido a partir del SVG/PNG publicado en..."* — es decir, el script se escribió *después*, para reproducir un diagrama que ya existía, y no es la herramienta original con la que se diseñó el modelo i*. Como evidencia de autoría (A3) esto es más débil que un archivo fuente nativo (por ejemplo, un archivo de piStar/OpenOME o un `.drawio`): prueba que el equipo puede regenerar la imagen, pero no que así se diseñó originalmente. Si el diseño original se hizo en otra herramienta, vale la pena guardar también ese archivo nativo si todavía existe; si el flujo real de trabajo fue diseñar directamente en Python/matplotlib, aclararlo aquí y quitar la palabra "reconstruido" del docstring para no dar pie a la duda.

## Mockups/

33 mockups de interfaz (roles Veterinario y Administrativo). Ver [`Mockups/Readme.md`](./Mockups/Readme.md) para el índice completo — sigue en borrador, pendiente de que el equipo confirme si nacieron de una herramienta de diseño previa o son capturas del propio MVP funcional.
