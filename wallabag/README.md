# Instalación

[Wallabag](https://github.com/wallabag/wallabag) es un servicio para guardar artículos y leerlos más tarde en formato de texto (read it later).

```
cp sample.env .env
sed -i "s/wallabag.tuservidor.es/el_fqdn_que_quieras/g" .env
sed -i "s/Tu Servidor Linux/el nombre que quieras/g" .env
mkdir images data
docker-compose up -d
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
