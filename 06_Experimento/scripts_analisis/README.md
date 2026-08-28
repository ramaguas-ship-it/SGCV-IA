# scripts_analisis/

## Estado: ESQUELETO VACIO (creado 27/08/2026)

Segun la Seccion 4 de la guia, todo analisis debe ejecutarse con scripts
versionados que reproduzcan exactamente cada tabla y figura del manuscrito.
No se aceptan tablas producidas manualmente en hojas de calculo ni figuras
pegadas sin script que las genere.

## Estructura esperada

| Script | Funcion |
|---|---|
| 01_importar_datos.R | Carga datos_crudos/ (transcripciones, respuestas, corpus RF/RNF) |
| 02_limpieza.R | Limpieza basica, deteccion de duplicados y valores faltantes |
| 03_descriptivos.R | Estadisticos descriptivos por grupo (mediana, media, DE, min, max, IQR) |
| 04_supuestos.R | Shapiro-Wilk (normalidad), Levene (homogeneidad de varianzas) |
| 05_pruebas_hipotesis.R | t pareada / Wilcoxon segun corresponda, correccion Holm-Bonferroni |
| 06_tamano_efecto.R | d de Cohen / delta de Cliff con bootstrap (10000 replicas) |
| 07_figuras.R | Genera todas las figuras del manuscrito hacia 07_Publicacion/figuras/ |
| 08_tablas.R | Genera todas las tablas del manuscrito hacia 07_Publicacion/tablas/ |
| run_all.R | Ejecuta los scripts anteriores en orden, de principio a fin |

## Regla de reproducibilidad (checklist de aceptacion, Seccion 9.3)

El requisito de cierre es que run_all.R (o make all) reproduzca
exactamente las cifras del manuscrito partiendo de datos_crudos/.
Ningun script debe contener resultados o cifras escritas a mano.

## Dependencia

Estos scripts no pueden producir resultados reales hasta que existan:
- datos_crudos/ (aun no creada)
- Transcripciones completas (8 de 16 minimas)
- Respuestas de cuestionario (~30 de 240 minimas, repartidas en 4 perfiles)
