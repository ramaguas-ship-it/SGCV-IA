# MVP — SGCV-IA (Sistema de Gestión Clínica Veterinaria con IA)

## Descripción

Prototipo funcional del MVP de **SGCV-IA**, orientado a demostrar los módulos Must have del ERS/SRS: autenticación por rol, gestión de pacientes, historial clínico, agenda de citas, inventario, facturación, sugerencias diagnósticas por IA (con flujo Aceptar/Modificar/Rechazar), reportes y configuración.

---

## Tecnologías

* HTML5 + CSS3 + JavaScript, empaquetado en un único archivo (`SGCV-IA_Prototipo_Funcional.html`).
* Sin backend ni base de datos real: los datos son de demostración y no persisten entre sesiones (limitación esperada en esta etapa de MVP).

---

## Estructura

```text
05_MVP/
├── SGCV-IA_Prototipo_Funcional.html   # Prototipo funcional (single-file)
├── Dockerfile                          # Imagen nginx que sirve el prototipo
├── docker-compose.yml                  # Despliegue con un solo comando
├── Videos_Demostracion/                # Videos por módulo (evidencia de C3/C13)
└── README.md
```

---

## Ejecución

### Opción 1 — Despliegue con Docker (recomendado para la evaluación C3)

```bash
cd 05_MVP
docker compose up
```

Luego abrir **http://localhost:8080** en el navegador.

### Opción 2 — Ejecución directa (sin Docker)

Abrir `SGCV-IA_Prototipo_Funcional.html` directamente en el navegador (doble clic).

---

## Cobertura de RF (Must have) demostrada

| RF | Módulo | Estado |
|---|---|---|
| RF-24 | Login / autenticación por rol | ✅ |
| RF-22 | Navegación diferenciada por rol (Veterinario / Administrativo) | ✅ |
| RF-02, RF-03 | Búsqueda y ficha centralizada de paciente | ✅ |
| RF-04 | Registro de consulta | ✅ |
| RF-05, RF-06 | Alertas e inventario | ✅ |
| RF-07, RF-08 | Cobro y facturación | ✅ |
| RF-11 | Agenda de citas | ✅ |
| RF-17, RF-18, RF-19 | Sugerencias diagnósticas por IA (Aceptar/Modificar/Rechazar) | ✅ |
| RF-25 | Reportes | ✅ (Could have, ya cubierto) |
| RF-23 | Log de auditoría | ⚠️ Pendiente de verificar en el código |
| RF-21 | Modo offline | ⚠️ No aplica a este prototipo web (alcance definido para escritorio) |

> Credenciales de demostración: documentar aquí las credenciales de prueba usadas en el video/defensa (nunca credenciales reales de la clínica cliente), conforme a la Sección 8.4 de la Guía de la Entrega 4.

---

## Limitaciones (alcance MVP)

* No hay persistencia real de datos (sin base de datos conectada).
* No hay autenticación contra un backend real (el login valida en el propio frontend).
* Los videos en `Videos_Demostracion/` son material de apoyo por módulo; para la defensa (Sección 8.4 de la guía) se debe preparar un video corto adicional que cubra específicamente los 2 escenarios de la matriz de trazabilidad, y depositarlo en `09_Defensa/video_defensa.mp4`.

---

## Equipo de desarrollo

* Barrionuevo Fuentes Carlos Daniel
* Vera Gómez Anthony Alfredo
* Mesias Quijije Jhon Alexander
* Amagua Sacon Robyn William
* Marcillo Ponce Jeanpool Alberto
