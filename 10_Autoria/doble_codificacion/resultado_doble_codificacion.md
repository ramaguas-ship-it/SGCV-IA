# A7 — Doble codificación independiente (resultado y coeficiente de acuerdo)

Proyecto SGCV-IA — Entrega 4 (2B). Cumplimiento del ítem A7 de la Guía de Desarrollo y del ítem 1 de la Sección 5 ("doble codificación independiente de al menos el 20% de las 16 transcripciones").

## 1. Diseño del ejercicio

- **Subconjunto codificado:** P02, P07, P13, P16 (4 de 16 entrevistas = 25%, por encima del mínimo del 20% exigido).
- **Codificador 1:** Alberto Jeanpool Marcillo Ponce (codificación original del proyecto, ya integrada al corpus completo de 167 códigos).
- **Codificador 2:** Jhon Alexander Mesías Quijije, codificación realizada de forma independiente, sin acceso previo a `codificacion_tematica_SGCV-IA.csv` ni a ningún archivo de codificación existente, usando únicamente las transcripciones y el instrumento `Guion_Entrevista_v2_0.pdf` como referencia de contexto.
- **Unidad de comparación:** presencia/ausencia de cada una de las 7 categorías finales del proyecto, por participante (4 participantes × 7 categorías = 28 observaciones). Se eligió esta unidad, y no el fragmento individual, porque los dos codificadores segmentaron el texto de forma distinta (diferente número y límites de fragmentos por transcripción); comparar la presencia de categoría por participante es la unidad más fina que ambas codificaciones permiten comparar sin forzar un alineamiento subjetivo fragmento por fragmento.

## 2. Resultado

| Métrica | Valor |
|---|---|
| N (participante × categoría) | 28 |
| Acuerdo observado (bruto) | 89,3% (25/28) |
| Acuerdo esperado por azar | 83,2% |
| **Kappa de Cohen** | **0,36** |
| IC 95% | [-0,32, 1,04] |

Calculado por `calcular_kappa.py` a partir de las dos hojas de codificación (`hoja_codificador1_Marcillo.csv`, `hoja_codificador2_Mesias.csv`); ningún número de esta tabla se escribió a mano.

## 3. Interpretación

El acuerdo bruto entre los dos codificadores es alto (89,3%: coincidieron en 25 de 28 juicios de presencia/ausencia de categoría). Sin embargo, el coeficiente kappa resultante (0,36) corresponde a un nivel "aceptable/moderado" según las escalas estándar (Landis y Koch, 1977), no "alto" — una diferencia que puede parecer contraintuitiva frente al acuerdo bruto.

Esto se debe a un efecto estadístico conocido como la **paradoja del kappa** (Feinstein y Cicchetti, 1990): cuando la distribución de las categorías está muy desbalanceada —en este caso, 24 de las 28 observaciones son "ambos codificadores marcan la categoría como presente"—, el acuerdo esperado únicamente por azar (pe) ya es muy alto (83,2%), y el kappa "descuenta" ese acuerdo esperado, produciendo un valor más bajo del que el acuerdo bruto sugeriría. No es un error de cálculo ni indica necesariamente baja fiabilidad real; es una limitación conocida del propio coeficiente cuando la prevalencia de las categorías es muy asimétrica.

**Los 3 desacuerdos concretos**, para trazabilidad:

| Participante | Categoría | Marcillo | Mesías |
|---|---|---|---|
| P07 | Gestión administrativa y financiera | Ausente | Presente |
| P07 | Inventario | Ausente | Presente |
| P16 | Seguridad | Ausente | Presente |

Revisando los fragmentos fuente, el mecanismo detrás de estos desacuerdos no es idéntico en los tres casos:

- **P16 / Seguridad:** sí corresponde a una diferencia de granularidad en la clasificación. Marcillo registró un fragmento de P16 sobre protección de datos ("que los datos no se compartan con terceros") pero lo codificó dentro de "Inteligencia Artificial" en lugar de "Seguridad", mientras que Mesías capturó una mención equivalente como fragmento independiente bajo "Seguridad". Es decir, el contenido sí fue registrado por ambos codificadores, solo que Marcillo lo subsumió bajo otra categoría.
- **P07 / Gestión administrativa y financiera y P07 / Inventario:** en estos dos casos no se encontró, dentro de los fragmentos de Marcillo para P07, ninguna mención a facturación o inventario clasificada bajo otra categoría. Todo indica que Marcillo simplemente no seleccionó ningún fragmento de esa transcripción sobre esos temas, mientras que Mesías sí lo hizo. Esto es una diferencia de cobertura/selección de fragmentos entre codificadores, no una reclasificación del mismo contenido, y debe leerse como tal.

En ningún caso hay contradicción sobre el contenido de lo que dijo el participante; los tres desacuerdos reflejan variabilidad normal entre codificadores independientes al decidir qué fragmentos extraer y bajo qué categoría agruparlos.

## 4. Limitación reconocida

El intervalo de confianza al 95% ([-0,32, 1,04]) es muy amplio y cruza el cero, reflejo del tamaño de muestra reducido (28 observaciones). Esto significa que el valor puntual de kappa (0,36) debe interpretarse con cautela: la muestra no permite afirmar con precisión estadística si el verdadero nivel de acuerdo es bajo, moderado o alto. Ampliar el subconjunto de doble codificación en estudios futuros del mismo equipo permitiría una estimación más precisa.

## 5. Archivos de este directorio

- `hoja_codificador1_Marcillo.csv` — codificación original de Alberto Jeanpool Marcillo Ponce (43 fragmentos, P02+P07+P13+P16).
- `hoja_codificador2_Mesias.csv` — codificación independiente de Jhon Alexander Mesías Quijije (77 fragmentos, P02+P07+P13+P16).
- `calcular_kappa.py` — script reproducible que genera `resultado_kappa.csv` a partir de las dos hojas anteriores.
- `resultado_kappa.csv` — salida del script (tabla de comparación + estadísticos).
