# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/navidrome
mkdir music data
cp sample.env .env
sed -i 's/navidrome.tuservidor.es/la-url-que-quieras/g' .env
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
