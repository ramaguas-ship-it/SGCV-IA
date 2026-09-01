# 02_Evidencias/00_Restringido

Esta carpeta contiene la evidencia identificable (zona restringida [R]) del proyecto SGCV-IA,
cifrada con AES-256 segun la Seccion 3 de la Guia de Entrega 4 (2B). El contenido de esta
carpeta no se licencia, no se redistribuye y no forma parte del deposito abierto.

## Contenido

| Archivo(s) | Contenido | Participantes |
|---|---|---|
| evidencias_P03aP16.7z.001-017 | Videos originales de entrevista (sin anonimizar) | P03-P16 (14) |
| evidencias_audio_P01aP16.7z.001-002 | Audios originales de entrevista (sin anonimizar) | P01-P16 (16) |
| evidencias_consentimientos_P01aP16.7z | Consentimientos firmados originales (cedula y firma visibles) | P01-P16 (16) |
| evidencias_restringidas.7z.001-007 | Pendiente de documentar por el resto del equipo (contraseña distinta, no verificado) |
| checksums_P03aP16.sha256 | Hashes SHA-256 de los videos, calculados antes de cifrar |
| checksums_audio_P01aP16.sha256 | Hashes SHA-256 de los audios, calculados antes de cifrar |
| checksums_consentimientos_P01aP16.sha256 | Hashes SHA-256 de los consentimientos, calculados antes de cifrar |

## Notas importantes

- Los videos de P01 y P02 no existen: el protocolo de grabacion en video se incorporo
  despues de esas dos entrevistas, que solo quedaron registradas en audio.
- La contrasena de los contenedores .7z se entrega unicamente al docente por el SGA,
  nunca dentro de este repositorio.
- Cada hash en los archivos checksums_*.sha256 corresponde al archivo original sin
  cifrar; sirve para verificar la integridad de cada archivo tras descifrar el contenedor.
- La duracion total de video (~202 min) esta actualmente por debajo del minimo de 240 min
  exigido por la guia - pendiente de revision por el equipo.

## Como verificar (para el docente)

7z x evidencias_P03aP16.7z.001 -p<contrasena>
sha256sum -c checksums_P03aP16.sha256
