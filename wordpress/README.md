# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/wordpress
cp sample.env .env
sed -i "s/wp.tuservidor.es/el_fqdn_que_quieras/g" .env
cp wp.sample.env wp.env
```

Tendrás que modificar los parámetros que vienen en el archivo `wp.env`, para personalizar las contraseñas, y el resto de valores. Ten en cuenta, que algunos de estos valores son idénticos entre variables.

En general el resto de configuración no la tienes que modificar.

Una vez lo tengas configurado y levantado, hay trabajo que realizar. Tienes que editar el archivo `wp-config.php` y añadir los siguientes parámetros:

```
define('WP_REDIS_HOST', 'wpapredis');
define('WP_REDIS_PORT', 6379);
define('WP_REDIS_TIMEOUT', 1);
define('WP_REDIS_READ_TIMEOUT', 1);
define('WP_REDIS_DATABASE', 0);
define('WP_CACHE_KEY_SALT', 'territoriolinux.es');
```

Por otro lado, recordarte, que además tienes un ejecutable `wpcli` que te permitirá trabajar directamente con WordPress desde la línea de comandos.

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

