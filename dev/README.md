# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/dev
cp sample.env .env
```

Recuerda cabiar los credenciales en el archivo `.env`, sobre todo los dos FQDN, tanto el de WordPress como el de acceso a PHPMyAdmin,


```
FQDN_WORDPRESS=dev.tuservidor.es
FQDN_PHPMYADMIN=myadmin.tuservidor.es
```

Por otro lado, recordarte, que además tienes un ejecutable `wpcli` que te permitirá trabajar directamente con WordPress desde la línea de comandos.

Este `docker-compose` está pensado para trabajar exclusivamente con Caddy, aunque es fácil migrarlo a Traefik, cambian las etiquetas correspondientes.

A la hora de levantar el servicio, simplemente eje cuta

```
docker-compose up -d
```

Para revisar los logs tienes que utiliza `docker-compose logs`, incluyendo el flag `-f`, en el caso de que lo quieras seguir
