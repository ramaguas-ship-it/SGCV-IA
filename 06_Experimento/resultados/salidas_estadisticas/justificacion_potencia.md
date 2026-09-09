# Justificación de potencia estadística — comparación entre perfiles

Generado: 2026-09-09 04:08:05

## Requisito de la guía

n ≥ 60 por perfil dominante, o justificación explícita con cálculo de
potencia estadística (Cohen d = 0.5, α = 0.05, 1−β = 0.80).

## Estado actual

- Perfil dominante: **Dueño(a) de mascota** (n = 26)
- ¿Cumple n ≥ 60? **No**
- n requerido por grupo para detectar d = 0.5 con α = 0.05 y potencia = 0.80: **64**
- Potencia real alcanzada con el n actual del perfil dominante: **42.4%** (objetivo: 80%)

## n actual por perfil

| Perfil | n |
|---|---|
| Dueño(a) de mascota | 26 |
| Médico veterinario(a) | 18 |
| Auxiliar o técnico veterinario | 11 |
| Administrador(a) de clínica veterinaria | 5 |

## Interpretación

El perfil dominante NO alcanza n ≥ 60. Con el tamaño de muestra actual, la potencia estadística para detectar un efecto mediano (d = 0.5) es de 42.4%, por debajo del 80% convencionalmente aceptado. Esto significa que las comparaciones entre perfiles reportadas en `06_pruebas_hipotesis.R` deben tratarse como **evidencia exploratoria, no confirmatoria** -- un efecto real de tamaño mediano podría no detectarse como estadísticamente significativo simplemente por falta de potencia, no porque no exista. Esta limitación debe declararse explícitamente en el manuscrito.
