# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/invidious
cp sample.env .env
sed -i "s/invidious.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir invidious_data
```

Además es necesario modificar el `domain` en el archivo `docker-compose.yml`, y algunas otras opciones. Por ejemplo,

* `popular_enabled` en el caso de que quieras listas populares
* `registration_enabled` en el caso de que quieras permitir el registro de otros usuarios.

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

