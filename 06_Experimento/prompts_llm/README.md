# prompts_llm/

## Esta carpeta no aplica al presente proyecto

El proyecto **SGCV-IA** trabaja el **Enfoque 3 — Explicabilidad como requisito no funcional**, asignado en la Sección 6 (Adaptación temática) de la Guía y Rúbrica de Evaluación de la Entrega 4 (2B), con la siguiente pregunta de investigación:

> ¿Qué requisitos de explicabilidad, operacionalizados como RNF verificables, resultan necesarios y suficientes para los distintos perfiles de usuarios de un sistema clínico veterinario con IA?

La carpeta `prompts_llm/` está prevista en el árbol de carpetas obligatorio de la Sección 9.1 para registrar los *prompts* y respuestas de un Modelo Grande de Lenguaje (LLM) cuando este forma parte del **instrumento de investigación** del componente empírico, con el detalle exacto de modelo, temperatura, top-p, semilla y fecha/hora de cada consulta. Esto corresponde a los siguientes enfoques de la guía:

- **Enfoque 1 (LLM vs. humano):** un LLM genera un conjunto de Requisitos Funcionales a partir de las mismas transcripciones de entrevistas usadas por el equipo humano, para comparar la calidad de ambos conjuntos.
- **Enfoque 2 (detección de ambigüedad):** un detector automático (que puede ser un LLM) etiqueta ambigüedad o malos olores en los RF, comparándose contra el consenso de personas expertas.

En ambos casos, el LLM **produce los datos que luego se analizan** — es la herramienta de investigación, y por eso su trazabilidad (prompt exacto, parámetros, fecha) es parte de la evidencia empírica que exige la guía.

## Por qué no aplica a SGCV-IA (Enfoque 3)

En el Enfoque 3, el LLM **no interviene como instrumento de investigación**. El objeto de estudio es el propio módulo de Inteligencia Artificial del sistema (IA-01, asistente de sugerencias diagnósticas), y la pregunta de investigación se responde mediante **elicitación cualitativa** (entrevistas semiestructuradas) y un **cuestionario cuantitativo**, siguiendo el marco de Chazette y Schneider (2020) y Chazette, Brunotte y Speith (2021, 2022). En ningún punto del protocolo un LLM genera Requisitos Funcionales ni etiqueta ambigüedad como parte del análisis; el LLM es, en todo caso, el sistema evaluado por los participantes, no la herramienta que produce los hallazgos.

Por consistencia con el árbol de carpetas obligatorio de la Sección 9.1, esta carpeta se mantiene presente pero vacía de contenido experimental, en lugar de eliminarse.

## Dónde sí se documenta el uso de IA en este proyecto

- El uso de un LLM para **pulir la redacción** de párrafos ya escritos por el equipo con base en datos empíricos (permitido según la guía) se declara en la sección *"Use of AI-assisted technologies"* del manuscrito final (Sección 5.9 de la guía), no en esta carpeta.
- El protocolo registrado en OSF (`06_Experimento/OSF_Registration.pdf`, osf.io/wkg32) documenta el diseño metodológico completo del Enfoque 3.

---

*Referencia: Guía y Rúbrica de Evaluación — Proyecto Fin de Curso, Entrega 4 (2B / Defensa Final), Sección 6 y Sección 9.1, ISR-401, 2026–2027 PPA.*
