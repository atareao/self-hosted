# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/sftpgo
cp sample.env .env
sed -i "s/sftpgo.tuservidor.es/el_fqdn_que_quieras/g" .env
```

Si no quieres utilizar `webdav`, elimina todo lo relativo al puerto `10080`, es decir, las siguientes líneas tienes que quitar del `docker-compose.yml`

```bash
      - 10080:10080
    environment:
      - SFTPGO_WEBDAV__BINDINGS__0__PORT=10080
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
