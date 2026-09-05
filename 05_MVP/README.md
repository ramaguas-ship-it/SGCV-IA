# MVP — SGCV-IA (Sistema de Gestión Clínica Veterinaria con IA)

## Descripción

Prototipo funcional del MVP de **SGCV-IA**, orientado a demostrar los módulos Must have del ERS/SRS: autenticación por rol, gestión de pacientes, historial clínico, agenda de citas, inventario, facturación, sugerencias diagnósticas por IA (con flujo Aceptar/Modificar/Rechazar), reportes y configuración.

---

## Tecnologías

* **Frontend**: HTML5 + CSS3 + JavaScript (React), empaquetado en un único archivo (`SGCV-IA_Prototipo_Funcional.html`).
* **Backend real**: Node.js + Express + SQLite (`backend/`). Sustituye la persistencia únicamente-en-navegador de la versión anterior: el login se valida en el servidor (RF-24/RNF-05, con bloqueo de cuenta también server-side) y el estado de la aplicación se guarda en una base de datos SQLite que sobrevive a reinicios del contenedor (`docker compose down && up`), no solo a recargas de página.

---

## Estructura

```text
05_MVP/
├── SGCV-IA_Prototipo_Funcional.html   # Frontend (single-file)
├── backend/
│   ├── server.js                       # API REST: login, estado persistente
│   ├── package.json
│   └── data/                            # Base de datos SQLite (montada como volumen)
├── Dockerfile                          # Imagen Node que corre el backend y sirve el frontend
├── docker-compose.yml                  # Despliegue con un solo comando + volumen persistente
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

## Video Demostrativo

A continuación se presenta el video demostrativo correspondiente a la versión MVP del sistema SGCV-IA, en el cual se exponen sus principales funcionalidades y su modo de operación. 

[Ver Demo SGCV-IA](https://github.com/ramaguas-ship-it/SGCV-IA/releases/download/v1.0-mvp-demo/Demo.SGCV-IA.mp4)

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
| RF-23 | Log de auditoría | ✅ Verificado en el código — pantalla "Log de Auditoría", registro automático de cada acción (usuario, módulo, fecha, detalle), de solo lectura |
| RF-21 | Modo offline | ⚠️ No aplica a este prototipo web (alcance definido para escritorio) |

> Credenciales de demostración: documentar aquí las credenciales de prueba usadas en el video/defensa (nunca credenciales reales de la clínica cliente), conforme a la Sección 8.4 de la Guía de la Entrega 4.

---

## Limitaciones (alcance MVP)

* La persistencia usa un único documento JSON en SQLite (no un esquema relacional normalizado por entidad); suficiente para demostrar cobertura funcional en esta etapa, pero no representa el modelo de datos final de producción.
* Los videos en `Videos_Demostracion/` son material de apoyo por módulo; para la defensa (Sección 8.4 de la guía) se debe preparar un video corto adicional que cubra específicamente los 2 escenarios de la matriz de trazabilidad, y depositarlo en `09_Defensa/video_defensa.mp4`.

---

## Equipo de desarrollo

* Barrionuevo Fuentes Carlos Daniel
* Vera Gómez Anthony Alfredo
* Mesias Quijije Jhon Alexander
* Amagua Sacon Robyn William
* Marcillo Ponce Jeanpool Alberto
