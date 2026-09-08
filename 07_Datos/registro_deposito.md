# Registro de depósito de datos — SGCV-IA

Generado automáticamente por `07_Datos/scripts/generar_checksums.R` el 2026-09-08 02:29:11 -05.

Este registro documenta el estado final de los datos crudos y los resultados
del pipeline de análisis en el momento del depósito. Si cualquiera de estos
archivos cambia después, hay que volver a correr este script para actualizar
tanto este registro como `checksums_datos.sha256`.

- Archivos de datos crudos (`07_Datos/datos_crudos/`): 17
- Archivos de resultados (`07_Datos/resultados/`): 8
- Total de archivos verificados: 25

## Verificación de integridad

Para comprobar que ninguno de estos archivos cambió después del depósito,
desde la raíz del repositorio:

```bash
sha256sum -c 07_Datos/checksums_datos.sha256
```

(en Windows, con Git Bash instalado, el mismo comando funciona igual)

## Detalle de checksums

| Archivo | SHA-256 |
|---|---|
| `07_Datos/datos_crudos/encuesta_respuestas_crudas.csv` | `415bc694c53fbc7efa187aeb8a39853ffe7471992d7d4b3ec007a8f390a5b6ba` |
| `07_Datos/datos_crudos/Entrevistas/2026-05-26_Transcripcion_P01_Entrevista.md` | `723337095fa3a1437626015b7585ba0c85c4a1d3efc16aea1959bf9bd6d49f6d` |
| `07_Datos/datos_crudos/Entrevistas/2026-05-26_Transcripcion_P02_Entrevista.md` | `3d25472b0434ba45a13983090d732d0a95a90a66ce352b8c2593430be956a3d1` |
| `07_Datos/datos_crudos/Entrevistas/2026-07-21_Transcripcion_P03_Entrevista.md` | `7bacaccf96c1efda80ced4693714622ca3a8a3f3378426034bc266079172004e` |
| `07_Datos/datos_crudos/Entrevistas/2026-07-25_Transcripcion_P04_Entrevista.md` | `2f1d2b0c55e5d7a1252c23dfcffc61b5a60edf4f9715913f77320ce84867d7e9` |
| `07_Datos/datos_crudos/Entrevistas/2026-07-25_Transcripcion_P05_Entrevista.md` | `ff9b4d8a7dc08629aa9eb2a2ddb5b316ec3aa5761fb13fd515f422a54b04b9b5` |
| `07_Datos/datos_crudos/Entrevistas/2026-07-27_Transcripcion_P06_Entrevista.md` | `3e238c9fa86e31adf860ef5adcbe0d04232fb4e742feb3407219ccfcc4e93a75` |
| `07_Datos/datos_crudos/Entrevistas/2026-07-27_Transcripcion_P07_Entrevista.md` | `c319e9749d6574e885e497095a15393d818e5631048d41eee4a9ecf8d78e7a51` |
| `07_Datos/datos_crudos/Entrevistas/2026-07-28_Transcripcion_P08_Entrevista.md` | `a1bb2f2f5150e2935cf9ecdde5468971f6abfe487a60c9c8e1a60f2782bf0580` |
| `07_Datos/datos_crudos/Entrevistas/2026-08-31_Transcripcion_P09_Entrevista.md` | `0a73c40cf477e975a4e1541c12f93ad89b25bb2f7cce25fc375dcfe04795c6c6` |
| `07_Datos/datos_crudos/Entrevistas/2026-08-31_Transcripcion_P10_Entrevista.md` | `0634e5e343599c678f3c933efb14c6ad3ea6b1334c0436ee6dc582b6512882d0` |
| `07_Datos/datos_crudos/Entrevistas/2026-08-31_Transcripcion_P11_Entrevista.md` | `221516d57a977809f38816f237585d10d1b30c0075db5f4f38d09cea808e64d4` |
| `07_Datos/datos_crudos/Entrevistas/2026-08-31_Transcripcion_P12_Entrevista.md` | `cd332de968b9578acb583488505c80f778a1d364d624ea6c0728637644ea97c6` |
| `07_Datos/datos_crudos/Entrevistas/2026-08-31_Transcripcion_P13_Entrevista.md` | `652cba7c708e85d908b212f661b6c94771f7b615e763ee522714d78db1ef79a8` |
| `07_Datos/datos_crudos/Entrevistas/2026-08-31_Transcripcion_P14_Entrevista.md` | `9e5ec6c1d06c7a2f68d25fc203e7b1076b09ce53f50b7cdc00c756bb11729191` |
| `07_Datos/datos_crudos/Entrevistas/2026-08-31_Transcripcion_P15_Entrevista.md` | `3b6ffbd10f869b3d247c201b5dad2265a76c225d27ec8aa754f3bf536348618d` |
| `07_Datos/datos_crudos/Entrevistas/2026-08-31_Transcripcion_P16_Entrevista.md` | `a616d82848a1c0a8419064ab91a4c1488175c34a4ea8ef61c7a72ac759fa9658` |
| `07_Datos/resultados/conteo_codigos_categorias.csv` | `d0cb7d5d572c43ccd79a4f5bea390546fce713a2f5d1f4c6524d85f46dd7d79b` |
| `07_Datos/resultados/curva_saturacion.csv` | `7fac150d41084bf34ad5b5473a2798cf2d51396c752dda22142893a8178752d2` |
| `07_Datos/resultados/encuesta_procesada.csv` | `c9336065ad10ec55b20fd842133d95cc60eb1318532f71a8d04b9938553fe656` |
| `07_Datos/resultados/justificacion_n60.md` | `3351a256a370cf3152fe29be955726d629398ca7b205358ef8e7f70ec7bd246f` |
| `07_Datos/resultados/perfil_participantes_agregado.csv` | `5627a5110c3be22e629cc3a669f50fe8ef6ae6f0b62f16306ec92850b8d85a3f` |
| `07_Datos/resultados/saturacion_reporte.md` | `d84bc3ff4e8a30630cd32c2cd1b06a1dbcc6b3dd6235eda7371392ba34e71e08` |
| `07_Datos/resultados/transcripciones_completas.rds` | `10513999304ddd7d5c4f5439f32454a1e1fe95beda4fba3a59886f9336b0e403` |
| `07_Datos/resultados/transcripciones_metadata.csv` | `9db6c729496cf1ce827d188466a787dc9e3f62bd17e4caf7c1abf3c22bbfc5bf` |
