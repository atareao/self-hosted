# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/gitea
mv sample.env .env
sed -i "s/dnote.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir data
```

El siguiente paso es levantar. Aquí solo te doy la opción de hacerlo con Traefik, porque necesitas algunas opciones que no te da la versión de caddy que estoy utilizando.

```
docker-compose docker-compose.yml up -d
docker-compose logs -f
```
