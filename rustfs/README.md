# RustFS con Traefik y Docker Compose

Este repositorio contiene la configuración necesaria para desplegar **RustFS**, un servidor de almacenamiento compatible con S3 escrito en Rust, utilizando Docker y gestionado mediante el proxy inverso **Traefik**.

## 🚀 Características del despliegue

* **Motor:** Basado en la imagen oficial de `rustfs/rustfs`.
* **Seguridad:** Configurado para funcionar exclusivamente bajo HTTPS mediante Traefik.
* **Consola Web:** Incluye acceso a la consola de administración en un subdominio independiente.
* **Persistencia:** Uso de volúmenes de Docker para asegurar la integridad de los datos.
* **Salud:** Healthchecks configurados para monitorear tanto el servicio S3 (puerto 9000) como la consola (puerto 9001).

## 🛠️ Requisitos Previos

* Docker y Docker Compose instalados.
* Una red externa en Docker llamada `proxy` (habitual en configuraciones con Traefik).
```bash
docker network create proxy

```


* Un proxy inverso Traefik funcionando y configurado para resolver certificados TLS.

## 📦 Instalación y Configuración

### 1. Preparar el entorno

Copia el archivo de ejemplo `sample.env` a `.env` y edita las variables con tus credenciales y dominios:

```bash
cp sample.env .env

```

### 2. Variables de Entorno

Asegúrate de configurar correctamente los siguientes valores en tu `.env`:

| Variable | Descripción |
| --- | --- |
| `FQDN1` | Dominio para el servicio S3 (ej: `s3.tudominio.es`). |
| `FQDN2` | Dominio para la consola de administración (ej: `admin-s3.tudominio.es`). |
| `RUSTFS_ACCESS_KEY` | Tu llave de acceso (mínimo 3 caracteres). |
| `RUSTFS_SECRET_KEY` | Tu llave secreta (mínimo 8 caracteres). |
| `RUSTFS_CONSOLE_ENABLE` | `true` para habilitar el panel de control web. |

### 3. Despliegue

Levanta el contenedor utilizando Docker Compose:

```bash
docker compose up -d

```

## 🔍 Verificación

Una vez desplegado, puedes comprobar el estado de los servicios:

* **S3 API:** `https://s3.tuservidor.es/health`
* **Consola:** `https://s3admin.tuservidor.es/rustfs/console/health`

## 📂 Estructura de Volúmenes

El despliegue utiliza un volumen nombrado llamado `data` que mapea a `/data` dentro del contenedor, donde RustFS almacena los objetos y la configuración.
