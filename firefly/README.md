# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/firefly
mv sample.env .env
sed -i "s/firefly.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir firefly_upload firefly_db
```

Dentro del archivo de configuración `.env` hay determinados parámetros que es posible que necesites cambiar. Por ejemplo, algunas contraseñas, el idioma por defecto o la zona horaria. Simplemente, repasa todas las variables de entorno y ajústalas a tus necesidades.

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

