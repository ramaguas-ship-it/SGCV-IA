# 03_Modelado/Mockups/

## Qué contiene esta carpeta

33 mockups de alta fidelidad (`MU-001` a `MU-033`, formato PNG, ~1365×650 px) de las pantallas del SGCV-IA, organizadas por rol de usuario (Veterinario / Administrativo). Cada mockup incluye, dentro de la propia imagen:

- El identificador de Requisito Funcional/No Funcional (RF-/RNF-) que ilustra, en la parte superior izquierda.
- La etiqueta de prioridad MoSCoW (`MUST HAVE` / `SHOULD HAVE`, etc.) en la esquina superior derecha.
- El menú lateral de navegación del sistema, que sirve de mapa de módulos.

**Nota:** estos mockups muestran datos con formato realista (montos, fechas, nombres de pacientes) y coinciden visualmente con `05_MVP/SGCV-IA_Prototipo_Funcional.html`. Si se generaron como capturas del propio MVP funcional en vez de como diseños previos en una herramienta externa (Figma/similar), acláralo aquí y en `10_Autoria/` — el archivo fuente editable exigido por A3 sería en ese caso el propio HTML/CSS del MVP, no un archivo de diseño aparte.

## Índice de mockups

### Rol Veterinario

| Archivo | Pantalla |
|---|---|
| `MU-001_Login.png` | Inicio de sesión |
| `MU-002_Dashboard.png` | Dashboard veterinario (RF-22, módulos visibles según rol RBAC) |
| `MU-003_Buscar_Paciente.png` | Búsqueda de paciente |
| `MU-004_Registrar_Paciente.png` | Registro de paciente |
| `MU-005_Ficha_Paciente.png` | Ficha clínica del paciente |
| `MU-006_Registrar_Consulta.png` | Registro de consulta (flujo completo) |
| `MU-007_..._Identificación_Del_Paciente.png` | Registro de consulta simplificado — paso 1: identificación del paciente |
| `MU-008_..._Motivo.png` | Registro de consulta simplificado — paso 2: motivo de consulta |
| `MU-009_..._Tratamiento.png` | Registro de consulta simplificado — paso 3: tratamiento |
| `MU-010_Sugerencia_IA.png` | Sugerencia diagnóstica asistida por IA (RF-17, RF-18, RF-19, RNF-09 — trazabilidad y supervisión humana obligatoria) |
| `MU-011_Seguimiento_De_Peso.png` | Seguimiento de peso del paciente |
| `MU-012_Registrar_Nuevo_Peso.png` | Registro de nuevo peso |
| `MU-013_Registrar_Citas.png` | Listado de citas |
| `MU-014_Nueva_Cita.png` | Registro de nueva cita |
| `MU-015_Alerta_De_Inventario.png` | Alerta de inventario bajo mínimo |
| `MU-016_Comunicaciones.png` | Bandeja de comunicaciones con el propietario |
| `MU-017_Nuevo_Registro_De_Comunicaciones.png` | Nueva comunicación |
| `MU-018_Envio_Por_WhatsApp.png` | Envío de comunicación por WhatsApp |
| `MU-019_Recomendaciones_Nutricionales.png` | Recomendaciones nutricionales |
| `MU-020_Recordatorios_Medicos.png` | Recordatorios médicos |
| `MU-021_Exportar_Reportes.png` | Exportar reportes |
| `MU-022_Exportar_CSV.png` | Exportación a CSV |

### Rol Administrativo

| Archivo | Pantalla |
|---|---|
| `MU-023_Dashboard_Administrativo.png` | Dashboard administrativo (cobros, stock, facturas, citas) |
| `MU-024_Gestion_Stock.png` | Gestión de stock/inventario |
| `MU-025_Registrar_Nuevo_Insumo.png` | Registro de nuevo insumo |
| `MU-026_Registro_De_Cobro.png` | Registro de cobro |
| `MU-027_Facturacion_Datos_Del_Receptor.png` | Facturación — paso 1: datos del receptor |
| `MU-028_Facturacion_Servicios_Montos.png` | Facturación — paso 2: servicios y montos |
| `MU-029_Confirmar_Emitir.png` | Facturación — paso 3: confirmar y emitir |
| `MU-030_Facturacion_Emitida.png` | Comprobante de facturación emitida |
| `MU-031_Recordatorios_De_Citas.png` | Recordatorios de citas (vista administrativa) |
| `MU-032_Log_De_Auditoria.png` | Log de auditoría |
| `MU-033_Reportes_Gerenciales.png` | Reportes gerenciales |

## Trazabilidad

Los códigos RF-/RNF- y CU- visibles en cada mockup deben coincidir con `04_Trazabilidad/matriz_trazabilidad.csv`. Si al revisar aparece alguna discrepancia entre lo que dice la imagen y la matriz, prevalece la matriz y hay que corregir el mockup (o viceversa, dejando constancia de cuál se corrigió).
