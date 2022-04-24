# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/radicale
mv sample.env .env
sed -i "s/radicale.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir data
touch .htpasswd-users
docker run --rm -it --name radicale -v ${PWD}/.htpasswd-users:/app/.htpasswd-users atareao/radicale:v1.0 htpasswd -c .htpasswd-users usuario
```

Recuerda cambiar `usuario` por el nombre del usuario que tu quieras.

Si quieres añadir mas usuarios, para cada uno de ellos, tienes que ejecutar la siguiente instrucción.

```
docker run --rm -it --name radicale -v ${PWD}/.htpasswd-users:/app/.htpasswd-users atareao/radicale:v1.0 htpasswd .htpasswd-users nuevo_usuario
```

Recuerda nuevamente que tendrás que cambiar `nuevo_usuario` por el nombre del usuario que consideres.

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

