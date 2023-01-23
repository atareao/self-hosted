# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/trilium
mv sample.env .env
sed -i "s/trilium.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir dnote_data
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
