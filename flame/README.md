# Instalación

[Flame](https://github.com/pawelmalak/flame) es un software para crear una "página de inicio" con enlaces a nuestras aplicaciones web y sitios web favoritos.

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/flame
cp sample.env .env
sed -i "s/flame.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir data
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
