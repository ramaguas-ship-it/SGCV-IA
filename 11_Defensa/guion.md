---
title: "Guion de la Defensa Final — Entrega 4 (2B)"
subtitle: "SGCV-IA — Sistema de Gestión para Clínicas Veterinarias con Inteligencia Artificial"
author: "Equipo SGCV-IA · Ingeniería de Requerimientos (ISR-401) · UTEQ"
date: "Período académico 2026–2027"
lang: es
geometry: "margin=2.2cm"
fontsize: 11pt
mainfont: "DejaVu Serif"
toc: false
---

# 0. Datos generales de la defensa

| | |
|---|---|
| **Proyecto** | SGCV-IA — Sistema de Gestión para Clínicas Veterinarias con Inteligencia Artificial |
| **Enfoque empírico** | Enfoque 3 — Explicabilidad como requisito no funcional |
| **Tiempo total** | 25 minutos de presentación + 10 minutos de preguntas del tribunal |
| **Diapositivas** | 15 (archivo `SGCV-IA_Presentacion_Defensa.pptx`) |
| **Repositorio** | github.com/ramaguas-ship-it/SGCV-IA |
| **Zenodo (DOI)** | 10.5281/zenodo.22238486 |
| **OSF** | osf.io/wkg32 |

**Equipo y roles en la defensa**

| Integrante | Rol en el proyecto | Bloque(s) que presenta | Tiempo hablado |
|---|---|---|---|
| Marcillo Ponce, Alberto Jeanpool | Analista líder | El problema · Conclusiones y estado de artefactos | 6 min |
| Barrionuevo Fuentes, Carlos Daniel | Apoyo · Modelador | El sistema · Resultados (codificación axial) | 6 min |
| Amagua Sacón, Robyn Willian | Documentador | Metodología y trabajo de campo | 4 min |
| Vera Gómez, Anthony Alfredo | Modelador | Resultados (RNF-18) · Demostración del prototipo | 5 min |
| Mesías Quijije, Jhon Alexander | Verificador | Discusión y amenazas a la validez | 4 min |
| **Total** | | | **25 min** |

Cada integrante debe cumplir al menos 4 minutos de tiempo hablado (criterio C10 / gatekeeper G7). Se recomienda un cronómetro visible en la sala o proyectado en una esquina de las diapositivas.

---

# 1. Estructura temporal obligatoria (Sección 8.1 de la guía)

| Bloque | Minutos | Diapositivas |
|---|---|---|
| 1. Problema y contribuciones | 3 | 1–3 |
| 2. Sistema y stakeholders | 3 | 4 |
| 3. Metodología del componente empírico | 4 | 5–7 |
| 4. Resultados (tablas y figuras) | 6 | 8–9 |
| 5. Discusión y amenazas a la validez | 4 | 10–11 |
| 6. Conclusiones y trabajo futuro | 3 | 12–13 |
| 7. Demostración corta del prototipo | 2 | 14 |

La diapositiva 15 (cierre / preguntas) no consume tiempo de los 25 minutos; se muestra al terminar el bloque 7 y queda proyectada durante la ronda de preguntas.

---

# 2. Guion diapositiva por diapositiva

## Diapositiva 1 — Portada *(no consume tiempo asignado; se muestra al iniciar)*

**Habla:** quien abra la sesión (sugerido: Marcillo Ponce).

> "Buenos días / buenas tardes. Presentamos SGCV-IA, un sistema real de gestión para
> clínicas veterinarias con un módulo de apoyo diagnóstico por Inteligencia Artificial.
> Nuestro estudio empírico trabaja el Enfoque 3 de la guía: la explicabilidad como
> requisito no funcional. Somos Alberto Marcillo, Robyn Amagua, Carlos Barrionuevo,
> Anthony Vera y Jhon Mesías, bajo la supervisión del Dr. Gleiston Guerrero Ulloa."

---

## Bloque 1 — El problema y las contribuciones (3 min) — **Marcillo Ponce**

### Diapositiva 2 — Una clínica veterinaria real, sin trazabilidad de las sugerencias de IA

- Partir del historial clínico mixto (papel + software básico) documentado desde la Entrega 1A.
- Señalar la tendencia: los módulos de IA diagnóstica crecen en clínicas pequeñas, pero raramente exponen sus factores de decisión.
- Cerrar con la brecha: casi no hay evidencia empírica de requisitos de explicabilidad en veterinaria latinoamericana.

> "El problema no es que la IA sugiera diagnósticos — es que lo hace sin mostrar
> por qué. En una clínica real, con historial mixto entre papel y un software básico,
> el veterinario no tiene hoy una forma sistemática de auditar esas sugerencias."

### Diapositiva 3 — Pregunta de investigación y contribuciones

- Leer la RQ tal como aparece en la diapositiva, pausando antes de "necesarios y suficientes".
- Recorrer las 4 contribuciones (C1–C4) en orden, enlazándolas con lo que se mostrará más adelante ("esto lo van a ver con más detalle en resultados").

**Transición:** "Para entender esas sugerencias de IA, primero hay que ubicar el sistema y quiénes lo usan — se la paso a Carlos."

---

## Bloque 2 — El sistema y sus stakeholders (3 min) — **Barrionuevo Fuentes**

### Diapositiva 4 — SGCV-IA y sus partes interesadas

- Presentar el diagrama de contexto: los 4 actores humanos y los 2 componentes externos.
- Detenerse en el rol del veterinario como quien decide sobre las sugerencias de IA — es el eje del estudio.
- Cerrar señalando que IA-01 e IA-02 siempre requieren revisión humana antes de aplicarse.

> "El sistema centraliza historial clínico, citas, facturación e inventario. Lo que
> nos interesa hoy es el módulo de IA: dos componentes, sugerencias diagnósticas y
> recomendación nutricional, y en ambos casos el veterinario tiene la última palabra."

**Transición:** "Con el sistema ubicado, Robyn va a explicar cómo elicitamos y validamos ese requisito de explicabilidad en campo."

---

## Bloque 3 — Metodología del componente empírico (4 min) — **Amagua Sacón**

### Diapositiva 5 — Enfoque 3: explicabilidad como requisito no funcional

- Nombrar el marco teórico (Chazette y Schneider 2020; Chazette, Brunotte y Speith 2021/2022) sin leer la cita completa.
- Explicar el diseño mixto: entrevistas semiestructuradas + cuestionario.
- Enfatizar el registro previo en OSF **antes** de la recolección, como salvaguarda contra HARKing y p-hacking — esto suele generar preguntas del tribunal, tenerlo bien preparado.

### Diapositiva 6 — Cierre del trabajo de campo

- Presentar los 4 números grandes en orden: 16 entrevistas, 167 códigos abiertos, 50 códigos axiales, 8 de ellos de IA.
- Explicar brevemente las zonas de evidencia (pública/restringida) sin entrar en detalle técnico del cifrado.
- **Ser explícito y tranquilo sobre el rigor**: mencionar que la codificación axial se recontó por completo antes de esta entrega (47→50) y que una frecuencia de un borrador anterior del manuscrito se corrigió (6/16 → 4/16). Esto demuestra control de calidad, no un error que ocultar.
- Leer el recuadro de "pendiente declarado" con naturalidad, sin restarle importancia ni exagerarlo: el cuestionario aún no llega a n≥60 por perfil y las actas de member checking están en trámite de carga.

### Diapositiva 7 — Punto de saturación temática

- Explicar la curva: cada punto es el acumulado de códigos axiales tras cada entrevista.
- Señalar el aplanamiento hacia el final (P14–P16) y leer las dos cifras clave: 1,33 códigos nuevos en promedio, equivalente a 2,67 % del acumulado — por debajo del umbral del 5 %.
- Cerrar con la conclusión: la saturación se sostiene con el conjunto verificado de 50 códigos.

**Transición:** "Con el trabajo de campo cerrado y saturado, vamos a los resultados frente a la pregunta de investigación — Carlos y Anthony."

---

## Bloque 4 — Resultados (6 min)

### Diapositiva 8 — RQ: códigos axiales por categoría (3 min) — **Barrionuevo Fuentes**

- Leer el gráfico de barras de mayor a menor, deteniéndose en la barra de Inteligencia Artificial (color distinto).
- Conectar: esos 8 códigos de IA son la base empírica directa del RNF-18 que se presenta a continuación.
- Mencionar la trazabilidad completa (64 filas) sin detallar cada fila — solo dejar constancia de que existe y es verificable.

### Diapositiva 9 — El requisito operacionalizado: RNF-18 (3 min) — **Vera Gómez**

- Leer el RNF-18 completo tal como aparece en el ERS (texto en el recuadro verde oscuro), despacio, es el corazón de la contribución.
- Explicar el criterio de verificación: 3 factores + indicador de confianza, visibles *antes* de decidir.
- Mostrar el caso de uso CU-06 y la cadena de trazabilidad (RF-17/18/19, RC-17/18/19).
- Cerrar con el dato de la frecuencia verificada (4 de 16 participantes exigieron explícitamente la revisión obligatoria) — es un puente natural hacia la discusión.

**Transición:** "¿Qué implica que solo 4 de 16 lo pidieran espontáneamente? Se lo explica Jhon."

---

## Bloque 5 — Discusión y amenazas a la validez (4 min) — **Mesías Quijije**

### Diapositiva 10 — Qué significan estos hallazgos

- Recorrer los tres subapartados en orden: investigación, práctica, hallazgo llamativo.
- En el hallazgo llamativo, ser cuidadoso con la interpretación: no decir que "a los usuarios no les importa la explicabilidad", sino que la exigencia normativa antecede a la demanda espontánea — es una lectura más precisa y defendible ante preguntas.
- Cerrar recordando el alcance: los hallazgos se limitan al módulo de IA de SGCV-IA y a esa clínica.

### Diapositiva 11 — Amenazas a la validez

- Recorrer las 4 categorías (interna, externa, constructo, conclusión) en la tabla, leyendo primero el riesgo y luego la mitigación de cada fila.
- No minimizar las amenazas — el tribunal valora que el equipo las reconozca con precisión, no que las esconda.

**Transición:** "Con esas limitaciones claras, cerramos con las conclusiones — Alberto."

---

## Bloque 6 — Conclusiones y trabajo futuro (3 min) — **Marcillo Ponce**

### Diapositiva 12 — Conclusiones y trabajo futuro

- Responder la RQ en una frase clara (columna izquierda) antes de pasar a las contribuciones consolidadas.
- Recorrer los 4 puntos de trabajo futuro sin extenderse — son la hoja de ruta, no el foco de la defensa.

### Diapositiva 13 — Estado declarado de los artefactos

- Presentar esta diapositiva con tono de transparencia profesional, no de disculpa: "así estamos hoy, esto es lo que falta y por qué lo declaramos así."
- Recorrer primero la columna "Completo" (7 ítems) y luego "Pendiente" (5 ítems), sin detenerse en cada uno — el tribunal puede preguntar por cualquiera de ellos en la ronda de preguntas.

**Transición:** "Para cerrar, una demostración corta del prototipo — Anthony."

---

## Bloque 7 — Demostración del prototipo (2 min) — **Vera Gómez**

### Diapositiva 14 — Demostración del prototipo (MVP)

- Antes de la defensa: levantar el entorno con `docker compose up` en `05_MVP/` y dejarlo abierto en segundo plano — no arrancarlo en vivo frente al tribunal.
- Recorrer el flujo de 4 pasos tal como aparece en la diapositiva: login por rol → ficha del paciente → sugerencia de IA con factores y confianza → Aceptar/Modificar/Rechazar.
- Usar únicamente las credenciales de demostración documentadas en `05_MVP/README.md`.
- Cubrir los dos escenarios de la matriz de trazabilidad previamente identificados por el equipo (Sección 8.4 de la guía) — confirmar cuáles son antes del día de la defensa y practicarlos.

### Diapositiva 15 — Cierre

- Dejar esta diapositiva proyectada mientras se abre la ronda de preguntas.
- No es necesario leerla en voz alta; sirve como referencia visual del repositorio, el DOI y el registro OSF para el tribunal.

---

# 3. Preparación para la ronda de preguntas (10 min)

El tribunal formula preguntas a integrantes específicos y evalúa la capacidad individual de responder por las decisiones metodológicas y por los datos (Sección 8.2 de la guía). Cada integrante debe poder defender, como mínimo, las decisiones de su propio bloque.

| Pregunta probable | Quién debería responder primero |
|---|---|
| ¿Por qué eligieron el Enfoque 3 y no otro? | Amagua Sacón |
| ¿Cómo se aseguraron de que la codificación axial no fuera sesgada por un solo analista? | Amagua Sacón / Barrionuevo Fuentes |
| ¿Por qué corrigieron el conteo de códigos axiales (47→50) tan cerca de la entrega? | Barrionuevo Fuentes |
| ¿Qué pasa si el cuestionario nunca llega a n≥60 por perfil? | Marcillo Ponce |
| ¿Por qué el RNF-18 se limita a "factores + confianza" y no cubre todo el marco de Chazette et al.? | Vera Gómez |
| ¿Qué garantiza que el veterinario realmente revise la sugerencia antes de aplicarla, más allá del flujo de la interfaz? | Vera Gómez / Mesías Quijije |
| ¿Cómo afecta a las conclusiones que solo sea una clínica? | Mesías Quijije |
| ¿Cuándo estará listo el manuscrito y a qué revista lo enviarán? | Marcillo Ponce |
| Mostrar en vivo qué pasa si el veterinario rechaza una sugerencia | Vera Gómez (usar el MVP ya abierto) |

**Recomendación de preparación:** cada integrante debe releer, la noche anterior, la sección de la guía y del ERS correspondiente a su propio bloque, y tener claro qué está pendiente en su área (Diapositiva 13) para no verse sorprendido si el tribunal pregunta por ello directamente.

---

# 4. Recordatorios operativos para el día de la defensa

- Verificar que el cronómetro sea visible durante toda la presentación (criterio C10: exceder el tiempo en más de 2 minutos penaliza).
- Confirmar que los 5 integrantes hablan al menos 4 minutos cada uno (gatekeeper G7).
- Tener el MVP corriendo en segundo plano antes de empezar, para no perder tiempo con el despliegue durante la demostración.
- No presentar como definitivo ningún resultado, cifra o tabla que no exista en el repositorio o en los datos crudos — cualquier cifra mencionada en la defensa debe poder mostrarse si el tribunal la pide (regla de integridad de la Sección "Advertencia sobre la defensa").
- Llevar impreso o accesible el folleto de una hoja con el resumen y los resultados principales.
