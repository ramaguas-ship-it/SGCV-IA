# 07_Publicacion/

## Estado: FINALIZADO (borrador) — actualizado 01/09/2026

Contenido sustantivo del manuscrito completo (Abstract, Introduction,
Related Work, Methodology, Results, Discussion, Threats to Validity,
Conclusions) y paquete de dataset (README_dataset.md, ANONYMIZATION.md,
ETHICS.md) completos. Quedan pendientes unicamente datos reales que el
equipo debe aportar antes del envio (ver tabla y notas abajo): ORCID de
5 coautores, licencia del dataset, cita del manuscrito publicado, y
eleccion formal de revista/conferencia notificada al docente.

Esta carpeta debe contener el manuscrito final para la revista/conferencia
objetivo, segun la Seccion 5 de la Guia de Entrega 4 (2B).

## Estado por archivo/carpeta

| Archivo/carpeta | Contenido esperado | Estado |
|---|---|---|
| manuscrito_final.tex | Fuente LaTeX (plantilla sn-jnl, Springer Nature) | Compila sin errores (17 paginas). Abstract, Introduction, Related Work, Methodology, Results, Discussion, Threats to Validity y Conclusions redactados con datos reales de la codificacion tematica (16 entrevistas, 37 codigos, saturacion en P14-P16). Unico pendiente real: ORCID de 5 coautores (linea 30) |
| manuscrito_final.pdf | PDF compilado desde manuscrito_final.tex | Generado |
| title_page.tex / title_page.pdf | Pagina de titulo con autoria, declaraciones (Funding, Competing Interests, Ethics, Consent, Author contributions) | Generado; declaraciones marcadas "Pending confirmation before submission" |
| referencias.bib | Minimo 40 entradas verificadas (DOI valido, sin referencias inventadas) | 41 entradas — cumple el minimo. DOIs sin re-verificar uno por uno |
| figuras/ | Figuras generadas por scripts_analisis/, no pegadas manualmente | curva_saturacion_tematica.pdf/.png generada a partir de los datos de Codificacion_Tematica_SGCV-IA.docx e insertada en Results (Figura 1) |
| tablas/ | Tablas generadas por scripts_analisis/ | Tabla 1 (literatura relacionada) redactada manualmente. Tabla 2 (codigos de explicabilidad, categoria E) generada a partir de la codificacion tematica real e insertada en Results |
| dataset_zenodo/README_dataset.md | Diccionario de datos e instrucciones de citacion | Completo en espanol, con DOI real (10.5281/zenodo.22238486) y esquema de seudonimizacion tomado de ANONYMIZATION.md. Pendiente: licencia y cita del manuscrito publicado |
| dataset_zenodo/ANONYMIZATION.md | Procedimiento de anonimizacion aplicado | Completo |
| dataset_zenodo/ETHICS.md | Resumen del proceso de consentimiento informado | Completo |

## Advertencia (Guia Seccion 5, "Advertencia especifica sobre integridad")

La seccion de resultados y discusion NO pueden escribirse antes de que
existan los datos analizados. No se aceptan resultados hipoteticos ni
referencias generadas por IA sin verificar cada DOI.

**Nota:** Results, Discussion y Conclusions se redactaron una vez recibida
la codificacion tematica real (Codificacion_Tematica_SGCV-IA.docx, 16
entrevistas, 37 codigos, saturacion confirmada en P14-P16), en cumplimiento
de esta advertencia. La validacion cuantitativa/estadistica terminal (si
aplica) sigue fuera del alcance de esta version del manuscrito y se
incorporara solo cuando existan esos datos y scripts verificados.

## Revista/conferencia objetivo

Pendiente de definir formalmente por el equipo (ver Seccion 2 de la guia:
debe elegirse antes del inicio de semana 14 y notificarse al docente).
El manuscrito actual usa la plantilla sn-jnl (Springer Nature,
sn-mathphys-num) como base de trabajo, pero esto no constituye una
eleccion formal notificada.

