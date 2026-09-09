# scripts_analisis

## Estado: EN CONSTRUCCIÓN — 1 de 10 scripts implementado (creado 27/08/2026, actualizado con datos reales)

Según la Sección 4 de la guía, todo análisis debe ejecutarse con scripts
versionados que reproduzcan exactamente cada tabla y figura del manuscrito.
No se aceptan tablas producidas manualmente en hojas de cálculo ni figuras
pegadas sin script que las genere.

## Estructura esperada

| Script | Función | Estado |
|---|---|---|
| 01_importar_datos.R | Carga datos_crudos/ (transcripciones, respuestas, corpus RF/RNF) | Pendiente |
| 02_limpieza.R | Limpieza básica, detección de duplicados y valores faltantes | Pendiente |
| 03_curva_saturacion_codigos_abiertos.R | Curva de saturación de códigos por entrevista | **Existe** |
| 04_descriptivos.R | Estadísticos descriptivos por grupo (mediana, media, DE, mín, máx, IQR) | Pendiente |
| 05_supuestos.R | Shapiro-Wilk (normalidad), Levene (homogeneidad de varianzas) | Pendiente |
| 06_pruebas_hipotesis.R | t pareada / Wilcoxon según corresponda, corrección Holm-Bonferroni | Pendiente |
| 07_tamano_efecto.R | d de Cohen / delta de Cliff con bootstrap (10.000 réplicas) | Pendiente |
| 08_figuras.R | Genera todas las figuras del manuscrito hacia 09_Publicacion/figuras/ | Pendiente |
| 09_tablas.R | Genera todas las tablas del manuscrito hacia 09_Publicacion/tablas/ | Pendiente |
| run_all.R | Ejecuta los scripts anteriores en orden, de principio a fin | Pendiente |

## Regla de reproducibilidad (checklist de aceptación, Sección 9.3)

El requisito de cierre es que `run_all.R` (o `make all`) reproduzca
exactamente las cifras del manuscrito partiendo de `datos_crudos/`.
Ningún script debe contener resultados o cifras escritas a mano.

## Estado real de los datos de entrada (verificado sobre el repositorio)

- **Transcripciones:** 16 de 16 mínimas — **completas** (`07_Datos/datos_crudos/Entrevistas/`).
- **Respuestas de cuestionario:** 60 respuestas totales en `07_Datos/datos_crudos/encuesta_respuestas_crudas.csv`, repartidas en 4 perfiles:
  - Dueño(a) de mascota: 26
  - Médico veterinario(a): 18
  - Auxiliar o técnico veterinario: 11
  - Administrador(a) de clínica veterinaria: 5

  El mínimo exigido es **n ≥ 60 por perfil dominante** (o justificación explícita con cálculo de potencia estadística, Cohen d = 0,5, α = 0,05, 1−β = 0,80). Ningún perfil individual alcanza ese umbral todavía; el perfil dominante (dueño de mascota) está en 26/60.
- **Codificación temática:** cerrada y verificada (50 códigos axiales en 7 categorías; ver `02_Evidencias/Codificacion_Tematica/`).

## Dependencia

Los scripts pendientes (01, 02, 04–09, run_all.R) no pueden producir resultados reales del componente cuantitativo hasta que:
1. Se complete la recolección de cuestionario hasta n ≥ 60 por perfil dominante, o se documente por escrito la justificación del tamaño de muestra actual mediante cálculo de potencia.
2. Se implementen y versionen los 8 scripts faltantes.

El análisis cualitativo (codificación temática y curva de saturación) ya tiene datos de entrada completos y solo depende de completar la implementación de los scripts restantes.
