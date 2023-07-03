# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/silverbullet
cp sample.env .env
sed -i "s/silverbullet.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir space
```

Acuérdate de crear el directorio `space` en el mismo directorio en el que se encuentra el archivo `docker-compose.yml`.

También deberías cambiar el resto de parámetros relativos a la autenticación.

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

