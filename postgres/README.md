# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/postgres
cp sample.env .env
sed -i "s/flame.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir data pgadmin
chown 999:0 data
chown 5050:1000 pgadmin
```

Además recuerda cambiar la contraseña.

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
