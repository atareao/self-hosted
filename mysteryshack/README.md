# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/mysteryshack
mv sample.env .env
sed -i "s/dnote.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir db
```

Ten en cuenta la identificación de tu usuario `uid` y `gid`.

En esta versión se utiliza directamente el complemento de docker compose. Para ello, tienes que instalarlo. Es muy sencillo, solo tienes que ejecutar la siguiente instrucción,

```bash
sudo apt-get install docker-compose-plugin
```

A la hora de levantar el servicio dependerá del proxy inverso que hayas seleccionado. Si has elegido Caddy, simplemente,

```
docker compose -f docker-compose.yml -f docker-compose.caddy.yml up -d
docker compose logs -f
```

Mientras que si has elegido Traefik,

```
docker compose -f docker-compose.yml -f docker-compose.traefik.yml up -d
docker compose logs -f
```

Ahora que lo tienes todo levantado, necesitarás crear un usuario para utilizar este servicio. Para ello simplemente tienes que ejecutar las siguientes instrucciones,

```bash
docker compose exec mysteryshack /rs/create-user.sh <NOMBRE-DE-USUARIO>
```
