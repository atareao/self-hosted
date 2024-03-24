# Instalación

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/socks5
cp sample.env .env
```

El archivo `.env` tiene el siguiente contenido,

```bash
PROXY_USER=yi9eiThei%qu3Ahv
PROXY_PASSWORD=pequ5Ez,oo6io6ae
PROXY_PORT=8388
```

Cambia las credenciales. Por ejemplo, puedes utilizar `pwgen` para ello.

Recuerda que tienes que tener abierto el puerto que definas en tu firewall.

Por último, simplemente,

```bash
docker compose up -d
```

