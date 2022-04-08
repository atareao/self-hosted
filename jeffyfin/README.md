# Servidor jellyfin

##  Clonar el repositorio

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/jellyfin
mkdir config
mkdir cache
mkdir media
mkdir media2
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
