# _PENDIENTE_VideoOriginal/

## Estado: EVIDENCIA CORRUPTA, PENDIENTE DE RESOLUCION (detectado 27/08/2026)

Durante la verificacion de integridad (calculo de hashes SHA-256 previo al
cifrado de la evidencia), se detecto que los videos de entrevista de los
siguientes dos participantes tienen 2 bytes de tamano cada uno -- es decir,
no contienen contenido audiovisual real, pese a estar nombrados como si
fueran las entrevistas completas.

## Archivos afectados

- EdisonMonacada/ (8 archivos .mp4, todos de 2 bytes, mismo hash SHA-256
  identico entre si: 7eb70257593da06f682a3ddda54a9d260d4fc514f645237f5ca74b08f8da61a6)
- JaimeOrtega/ (8 archivos .mp4, mismo patron)

## Verificacion tecnica

Un hash SHA-256 identico entre archivos que deberian ser distintos solo
es posible si el contenido es byte por byte igual -- confirma que estos
archivos nunca contuvieron las grabaciones reales, o que la subida
original fallo silenciosamente.

## Que falta para resolver esto

1. Contactar a los participantes o a quien realizo estas dos entrevistas
   para confirmar si existe el archivo original en otro dispositivo
   (celular, respaldo local, Drive personal).
2. Si el original existe: volver a subirlo, recalcular su hash SHA-256,
   y moverlo a 02_Evidencias/00_Restringido/ dentro del contenedor cifrado.
3. Si el original NO existe: la entrevista debe repetirse, o se debe
   excluir del conteo de las 16 entrevistas minimas requeridas y
   documentar la perdida en la seccion de Amenazas a la Validez del
   manuscrito (limitacion de validez interna).

## Nota de integridad

Estos archivos NO se incluyeron en evidencias_restringidas.7z ni en
fichas_tecnicas.csv, precisamente porque no representan evidencia valida.
Se conservan aqui, sin cifrar, unicamente como registro de lo que se
detecto y como recordatorio de la tarea pendiente -- no como evidencia
de campo.
