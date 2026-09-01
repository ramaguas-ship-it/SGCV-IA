# SGCV-IA — Sistema de Gestión para Clínicas Veterinarias con Inteligencia Artificial

> **Nota sobre el historial de Git (27/08/2026):** el historial de este
> repositorio fue reescrito para cifrar evidencia audiovisual identificable
> (cumplimiento etico, ver LICENSE y `02_Evidencias/00_Restringido/README.md`).
> Los commits anteriores al 27/08/2026 mantienen su fecha y autor originales,
> pero cambiaron de identificador. **Si ya tenia este repositorio clonado,
> por favor bórrelo y clónelo de nuevo** — un `git pull` normal dará error.

## Integrantes y roles

| Nombre | Rol |
|---|---|
| Amagua Sacón Robyn Willian | Documentador |
| Barrionuevo Fuentes Carlos Daniel | Apoyo - Modelador |
| Marcillo Ponce Alberto Jeanpool | Analista líder |
| Mesías Quijije Jhon Alexander | Verificador |
| Vera Gómez Anthony Alfredo | Modelador |
| Dr. Guerrero Ulloa Gleiston Cicerón | Docente supervisor |

## Resumen del dominio

El SGCV-IA es un sistema de software real desarrollado para una clínica veterinaria, orientado a
centralizar la gestión de historiales clínicos, citas, facturación e inventario, e incorporar un módulo
de apoyo diagnóstico basado en Inteligencia Artificial con supervisión obligatoria del profesional
veterinario.

## Enlaces

- ERS/SRS completo (PDF): [`01_ERS/ERS_SRS_2B_v2.0.pdf`](01_ERS/ERS_SRS_2B_v2.0.pdf)
- Manuscrito final: [pendiente — 07_Publicacion/ solo contiene el esqueleto documentado]
- MVP funcional: [`05_MVP/README.md`](05_MVP/README.md)
- Registro previo del protocolo experimental (OSF): [`06_Experimento/OSF_Registration.pdf`](06_Experimento/OSF_Registration.pdf) ([ver registro en OSF](https://osf.io/r5p8d))
- Espejo del repositorio de software (OSF): [osf.io/wkg32](https://osf.io/wkg32)
- Conjunto de datos / código fuente (Zenodo, DOI): [10.5281/zenodo.22238486](https://doi.org/10.5281/zenodo.22238486)
- Archivo de Software Heritage (SWHID): `swh:1:dir:61ecd6edd0a82807ae244055a854fa84afbd0810` ([ver en el archivo](https://archive.softwareheritage.org/swh:1:dir:61ecd6edd0a82807ae244055a854fa84afbd0810;origin=https://github.com/ramaguas-ship-it/SGCV-IA))

## Cita recomendada

Ver [`CITATION.cff`](./CITATION.cff) — DOI: [10.5281/zenodo.22238486](https://doi.org/10.5281/zenodo.22238486)

## Cómo reproducir el análisis experimental

**Estado actual: no reproducible todavía.** `06_Experimento/scripts_analisis/` contiene únicamente
un esqueleto documentado (ver su README.md) con la secuencia de 8 scripts planeada. No existe
código de análisis real ni datos crudos depositados en `06_Experimento/datos_crudos/` (carpeta
pendiente de crear). Este apartado se actualizará cuando exista contenido ejecutable.

## Sobre la evidencia de campo

La evidencia audiovisual identificable (videos, audios y consentimientos originales de las
entrevistas) está cifrada con AES-256 en
[`02_Evidencias/00_Restringido/evidencias_restringidas.7z`](02_Evidencias/00_Restringido/evidencias_restringidas.7z).
La contraseña se entrega únicamente al docente evaluador, fuera de este repositorio. El detalle
técnico de cada archivo (duración, códec, hash SHA-256) está en
[`02_Evidencias/fichas_tecnicas.csv`](02_Evidencias/fichas_tecnicas.csv).
