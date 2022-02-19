# Servidor webdav partiendo de alpine

##  Clonar el repositorio

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/webdav
mkdir share
cp sample.env .env
```

If you want to work with Traefik,

```
docker-compose -f docker-compose.yml -f docker-compose.traefik.yml up -d
docker-compose logs -f
```

If you want to work with Caddy,

```
docker-compose -f docker-compose.yml -f docker-compose.caddy.yml up -d
docker-compose logs -f
```
