# HedgeDoc con MariaDB y Traefik

Este repositorio contiene la configuración de **Docker Compose** para desplegar **HedgeDoc**, un editor de notas colaborativo basado en Markdown, utilizando **MariaDB** como base de datos y **Traefik** como proxy inverso para la gestión de certificados SSL.

## 🚀 Características del despliegue

* 
**Editor Colaborativo:** Basado en la imagen de `linuxserver/hedgedoc`.


* 
**Base de Datos:** Persistencia robusta mediante `mariadb`.


* 
**Proxy Inverso:** Integración nativa con Traefik mediante etiquetas (labels) para HTTPS automático.


* 
**Seguridad:** Uso de redes aisladas (`internal`) para la comunicación entre la base de datos y la aplicación.



## 🛠️ Requisitos Previos

* Docker y Docker Compose instalados.
* Una red externa en Docker llamada `proxy`. Si no existe, puedes crearla con:
```bash
docker network create proxy

```


* Un proxy inverso Traefik correctamente configurado en tu sistema.

## 📦 Instalación y Configuración

### 1. Configurar variables de entorno

Copia el contenido de `sample.env` a un nuevo archivo `.env` y ajusta los valores:

```bash
# Ejemplo de configuración en .env
MYSQL_ROOT_PASSWORD=tu_password_maestro
MYSQL_DATABASE=hedgedoc
MYSQL_USER=hedgedoc
MYSQL_PASSWORD=tu_password_usuario
FQDN=doc.tudominio.es

```

### 2. Desplegar el servicio

Desde la terminal, en el mismo directorio donde se encuentra el archivo `compose.yml`, ejecuta:

```bash
docker compose up -d

```

## ⚙️ Detalles Técnicos

Redes 

* **internal:** Red privada para que HedgeDoc se conecte a MariaDB sin exponer la base de datos al exterior.
* **proxy:** Red externa que permite a Traefik redirigir el tráfico hacia el contenedor de HedgeDoc.

Volúmenes 

* **data:** Almacena la configuración y datos de MariaDB (`/config`).
* **config:** Almacena la configuración de la aplicación HedgeDoc.

## 📝 Notas del despliegue

El servicio de HedgeDoc está configurado para escuchar en el puerto `3080` a través del balanceador de carga de Traefik y responderá únicamente bajo el dominio definido en la variable `${FQDN}`.
