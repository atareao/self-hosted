# Instalación

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/registry
cp sample.env .env
sed -i "s/tu.servidor.es/el_fqdn_que_quieras/g" .env
```

En el archivo config.yml, también tienes que cambiar el servidor que está definido en `Access-Control-Allow-Origin`

## Credenciales

Configuración de las credenciales de un nuevo usuario
```bash
docker run --entrypoint htpasswd httpd:2 -Bbn '<usuario>' '<password>' > htpasswd
```
## Levantar el servicio

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

## Como subir una imagen a tu registry

Para subir una imagen a tu registry necesitas hacer login en el mismo con los credenciales que configuraste antes. Por ejemplo, supongamos que tu registry es `registry.tuservidor.es`, lo primero que tienes que hacer es hacer `login`, para ello,

```bash
docker login registry.tuservidor.es
```

El siguiente paso es que etiquetes la imagen que quieres subir a tu `registry`. Esto lo puedes hacer de la siguiente forma,

```bash
docker tag <usuario>/<imagen> registry.tuservidor.es/<usuario>/<imagen>
```

Donde tienes que reemplazar `<usuario>` por el usuario que tu quieres, en mi caso `atareao`, y `<imagen>` por el nombre de tu imagen.

El siguiente paso es subirlo a tu `registry` como lo harías normalmente,

```bash
docker push registry.tuservidor.es/<usuario>/<imagen>
```

Y ya tienes tu primera imagen en tu recién inaugurado `registry`.
