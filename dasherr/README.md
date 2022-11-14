# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/nginx
touch htpasswd
docker run --init -it -v "${PWD}/htpasswd:/opt/nginx/conf/.htpasswd" --rm --name dasherr atareao/dasherr htpasswd -c /opt/nginx/conf/.htpasswd tuusuario
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
