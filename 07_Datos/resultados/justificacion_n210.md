# Justificación del tamaño de muestra (n = 210)

- Tamaño de muestra: n = 210
- Nivel de confianza: 95% (Z = 1.96)
- Variabilidad asumida: p = 0.5 (máxima, escenario conservador, población no finita/desconocida)
- Margen de error alcanzado: ~6.8%

## Tamaño mínimo requerido para otros márgenes de error (mismo nivel de confianza)

| Margen de error objetivo | n mínimo requerido |
|---|---|
| 5% | 385 |
| 10% | 97 |
| 15% | 43 |

Con n = 210 la muestra **supera** el umbral del 10% (n mínimo requerido: 97) con holgura.

## Nota metodológica

La variable "frecuencia de uso" no existe como tal en la encuesta cerrada.
Se usó como aproximación la pregunta sobre frecuencia de inconvenientes en la
atención/gestión de la clínica, por ser la columna de frecuencia más cercana
disponible. Si el equipo define una variable de frecuencia de uso distinta,
hay que actualizar `col_frecuencia` en este script y volver a ejecutarlo.

## Privacidad

Este reporte y el archivo `perfil_participantes_agregado.csv` contienen
únicamente conteos agregados. No incluyen nombres ni ninguna otra columna
que permita reidentificar a un participante individual.
