# Self Hosted

Colección de despliegues con Docker Compose para auto-hospedar tus propios servicios: cada carpeta contiene todo lo necesario (compose, configuración de ejemplo y proxy inverso) para levantar ese servicio en tu servidor.

[![Stars](https://img.shields.io/github/stars/atareao/self-hosted?style=flat-square&logo=github)](https://github.com/atareao/self-hosted/stargazers)
[![License](https://img.shields.io/github/license/atareao/self-hosted?style=flat-square)](./LICENSE.md)
[![Last commit](https://img.shields.io/github/last-commit/atareao/self-hosted?style=flat-square)](https://github.com/atareao/self-hosted/commits/main)

## Índice de servicios

### Medios y streaming

| Servicio | Qué es |
| --- | --- |
| [jellyfin](./jellyfin) | Servidor de medios (películas, series, música) |
| [navidrome](./navidrome) | Servidor de música con streaming |
| [audiobookshelf](./audiobookshelf) | Audiolibros y podcasts |
| [immich](./immich) | Fotos y vídeos con copia de seguridad automática |
| [photoprism](./photoprism) | Gestión y organización de fotos |
| [chevereto](./chevereto) | Alojamiento de imágenes |
| [kavita](./kavita) | Lector de cómics, manga y libros |
| [metube](./metube) | Descarga de vídeos de YouTube |
| [invidious](./invidious) | Frontend alternativo de YouTube |
| [nitter](./nitter) | Frontend alternativo de Twitter/X |
| [pinepods](./pinepods) | Cliente y servidor de podcasts |
| [podmixer](./podmixer) | Mezcla y publicación de podcasts |
| [storyteller](./storyteller) | Sincronización de audiolibros y ebooks |
| [simple-torrent](./simple-torrent) | Cliente BitTorrent con interfaz web |
| [dim](./dim) | Organizador de biblioteca multimedia |

### Lectura, RSS y marcadores

| Servicio | Qué es |
| --- | --- |
| [freshrss](./freshrss) | Lector de feeds RSS |
| [miniflux](./miniflux) | Lector de RSS minimalista |
| [miniflux-client](./miniflux-client) | Cliente web para Miniflux |
| [readeck](./readeck) | Guarda artículos para leer después |
| [wallabag](./wallabag) | Read-it-later con aplicaciones móviles |
| [shaarli](./shaarli) | Marcadores y enlaces personales |

### Productividad y colaboración

| Servicio | Qué es |
| --- | --- |
| [nextcloud](./nextcloud) | Nube privada: ficheros, calendario, contactos |
| [bookstack](./bookstack) | Documentación y wiki en forma de libros |
| [focalboard](./focalboard) | Tableros tipo Kanban y gestión de proyectos |
| [kanboard](./kanboard) | Gestión de tareas Kanban |
| [planka](./planka) | Tableros Kanban colaborativos |
| [hedgedoc](./hedgedoc) | Edición colaborativa de Markdown |
| [codimd](./codimd) | Markdown colaborativo en tiempo real |
| [otterwiki](./otterwiki) | Wiki ligera basada en Markdown |
| [wikijs](./wikijs) | Wiki para equipos y documentación |
| [radicale](./radicale) | Servidor CalDAV y CardDAV |
| [facturascripts](./facturascripts) | Facturación y contabilidad |
| [odoo](./odoo) | ERP y gestión empresarial |
| [firefly](./firefly) | Finanzas personales |
| [wger](./wger) | Entrenamientos y nutrición |

### Notas y conocimiento

| Servicio | Qué es |
| --- | --- |
| [trilium](./trilium) | Notas jerárquicas con editor enriquecido |
| [memos](./memos) | Notas rápidas y microblog personal |
| [flatnotes](./flatnotes) | Notas en Markdown sin base de datos |
| [logseq](./logseq) | Base de conocimiento y notas enlazadas |
| [silverbullet](./silverbullet) | Notas Markdown con consultas |
| [standardnotes](./standardnotes) | Notas cifradas de extremo a extremo |
| [notemark](./notemark) | Notas Markdown autoalojadas |
| [dnote](./dnote) | Notas y fragmentos desde la terminal |
| [laverna](./laverna) | Notas con cifrado y Markdown |
| [snibox](./snibox) | Fragmentos de código y snippets |
| [glass-keep](./glass-keep) | Clon de Google Keep |
| [mysteryshack](./mysteryshack) | Servidor compatible con Dnote |

### Web y blogs

| Servicio | Qué es |
| --- | --- |
| [ghost](./ghost) | Plataforma de blogging |
| [wordpress](./wordpress) | CMS WordPress |
| [wordpressx2](./wordpressx2) | Dos instancias de WordPress |
| [dev](./dev) | Entorno de desarrollo de WordPress |

### Documentos y PDF

| Servicio | Qué es |
| --- | --- |
| [stirling-pdf](./stirling-pdf) | Suite de herramientas para PDF |
| [pdfding](./pdfding) | Gestión y organización de PDF |
| [dingpdf](./dingpdf) | Gestor de documentos PDF |
| [bentopdf](./bentopdf) | Utilidades PDF en el navegador |

### Desarrollo y DevOps

| Servicio | Qué es |
| --- | --- |
| [gitea](./gitea) | Servidor Git ligero |
| [opengist](./opengist) | Alternativa autoalojada a GitHub Gist |
| [custom-code-server](./custom-code-server) | VS Code en el navegador, personalizado |
| [vscode](./vscode) | VS Code Server |
| [portainer](./portainer) | Gestión de Docker vía web |
| [portainer+traefik](./portainer+traefik) | Portainer junto a Traefik |
| [dockge](./dockge) | Gestor de stacks de Docker Compose |
| [yacht](./yacht) | Panel de administración de contenedores |
| [registry](./registry) | Registro privado de imágenes Docker |
| [cloudbeaver](./cloudbeaver) | Cliente web de bases de datos |
| [postgres](./postgres) | Base de datos PostgreSQL |
| [couchdb](./couchdb) | Base de datos CouchDB |
| [rabbitmq](./rabbitmq) | Broker de mensajería |
| [weaviate](./weaviate) | Base de datos vectorial |
| [rustfs](./rustfs) | Almacenamiento compatible con S3 |
| [semaphore](./semaphore) | Ejecución de playbooks de Ansible |
| [dagu](./dagu) | Orquestación de workflows |
| [ittools](./ittools) | Colección de utilidades para desarrolladores |
| [wakapi](./wakapi) | Estadísticas de tiempo de programación |
| [atuin](./atuin) | Historial de shell sincronizado |

### Inteligencia artificial

| Servicio | Qué es |
| --- | --- |
| [open-webui](./open-webui) | Interfaz web para modelos de lenguaje |
| [whisper](./whisper) | Transcripción de audio a texto |

### Seguridad y autenticación

| Servicio | Qué es |
| --- | --- |
| [authentik](./authentik) | Proveedor de identidad y SSO |
| [pocketid](./pocketid) | SSO sencillo con passkeys |
| [vaultwarden](./vaultwarden) | Gestor de contraseñas compatible con Bitwarden |
| [crowdsec](./crowdsec) | Detección y bloqueo de intrusiones |
| [yopass](./yopass) | Compartición de secretos con caducidad |

### Monitorización y observabilidad

| Servicio | Qué es |
| --- | --- |
| [grafana-influx-telegraf](./grafana-influx-telegraf) | Stack de métricas: Grafana, InfluxDB y Telegraf |
| [tick](./tick) | Stack TICK: Telegraf, InfluxDB, Chronograf y Kapacitor |
| [beszel](./beszel) | Monitorización ligera de servidores |
| [uptime-kuma](./uptime-kuma) | Monitor de disponibilidad de servicios |
| [dozzle](./dozzle) | Visor de logs de contenedores en tiempo real |
| [openobserve](./openobserve) | Observabilidad: logs, métricas y trazas |
| [zincobserve](./zincobserve) | Plataforma de observabilidad |
| [zincsearch](./zincsearch) | Motor de búsqueda de texto completo |
| [vector](./vector) | Pipeline de recolección de logs y métricas |
| [umami](./umami) | Analítica web respetuosa con la privacidad |
| [plausible](./plausible) | Analítica web sin cookies |

### Redes y proxy inverso

| Servicio | Qué es |
| --- | --- |
| [traefik](./traefik) | Proxy inverso y terminación TLS |
| [caddy](./caddy) | Servidor web y proxy con HTTPS automático |
| [nginx](./nginx) | Servidor web y proxy inverso |
| [unbound](./unbound) | Resolver DNS recursivo |
| [searxng](./searxng) | Metabusca privada |
| [socks5](./socks5) | Proxy SOCKS5 |
| [mtproxy](./mtproxy) | Proxy para Telegram |

### Ficheros y compartición

| Servicio | Qué es |
| --- | --- |
| [filebrowser](./filebrowser) | Explorador de ficheros web |
| [dufs](./dufs) | Servidor de ficheros estático |
| [sftpgo](./sftpgo) | Servidor SFTP, FTP y WebDAV |
| [webdav](./webdav) | Servidor WebDAV |
| [gokapi](./gokapi) | Enlaces de descarga con caducidad |
| [picoshare](./picoshare) | Compartición rápida de ficheros |
| [microbin](./microbin) | Pastebin y subida de ficheros |
| [pastebin](./pastebin) | Servicio de pegado de texto |
| [ferrishare](./ferrishare) | Transferencia de ficheros |
| [cells](./cells) | Plataforma de gestión de ficheros (Pydio Cells) |
| [pairdrop](./pairdrop) | Transferencia de ficheros entre dispositivos |

### Comunicación y notificaciones

| Servicio | Qué es |
| --- | --- |
| [matrix](./matrix) | Servidor de mensajería Matrix |
| [matrixmail](./matrixmail) | Puente entre Matrix y correo |
| [mumble](./mumble) | Servidor de voz para grupos |
| [ntfy](./ntfy) | Notificaciones push por HTTP |
| [gotify](./gotify) | Servidor de notificaciones |

### Dashboards y paneles

| Servicio | Qué es |
| --- | --- |
| [homepage](./homepage) | Página de inicio con enlaces y widgets |
| [homer](./homer) | Panel de accesos directos |
| [flame](./flame) | Dashboard de aplicaciones |
| [dasherr](./dasherr) | Panel de inicio personalizable |

### Automatización

| Servicio | Qué es |
| --- | --- |
| [huginn](./huginn) | Agentes para automatizar tareas y flujos |

### Otros

| Servicio | Qué es |
| --- | --- |
| [publirs](./publirs) | Publicación automatizada de contenidos |

## Cómo usarlo

Cada servicio vive en su propia carpeta y sigue el mismo patrón:

```bash
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/<servicio>
cp sample.env .env
# edita .env y sustituye el FQDN de ejemplo por el tuyo
```

Después levanta el servicio con el proxy inverso que uses:

```bash
# Con Traefik
docker compose -f docker-compose.yml -f docker-compose.traefik.yml up -d

# Con Caddy
docker compose -f docker-compose.yml -f docker-compose.caddy.yml up -d

# Solo el servicio, sin proxy
docker compose up -d
```

Puedes seguir los logs con `docker compose logs -f`. Algunas carpetas usan `compose.yml` en lugar de `docker-compose.yml`; en ese caso ajusta el nombre del fichero.

## Requisitos

- Docker y el plugin `docker compose` (`docker-compose-plugin`).
- Un dominio o subdominio si vas a usar Traefik o Caddy con HTTPS.
- Revisar el `README.md` y el `sample.env` de **cada** servicio: muchos necesitan variables propias (usuarios, contraseñas, rutas de volúmenes, UID/GID) y algunos requieren crear directorios antes de arrancar.

## Licencia

Distribuido bajo licencia MIT. Consulta [LICENSE.md](./LICENSE.md) para más detalles.
