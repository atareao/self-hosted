# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/laverga
cp sample.env .env
sed -i "s/laverga.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir laverga_data
```

El siguiente paso es crear un usuario. Para esto tienes un sencillo script que te permitirá hacerlo `bash ./create_user.sh`

A la hora de levantar el servicio dependerá del proxy inverso que hayas seleccionado. Si has elegido Caddy, simplemente,

```
docker-compose -f docker-compose.yml -f docker-compose.caddy.yml up -d
docker-compose logs -f
```

Mientras que si has elegido Traefik,

```
docker-compose -f docker-compose.yml -f docker-compose.traefik.yml up -d
docker-compose logs -f
```

