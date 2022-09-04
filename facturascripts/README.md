# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/facturascripts
cp sample.env .env
sed -i "s/dnote.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir mariadb facturascripts
```

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

