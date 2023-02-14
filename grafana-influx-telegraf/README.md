# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/dnote
cp sample.env .env
sed -i "s/grafana.tudominio.es/el_fqdn_que_quieras/g" .env
```

Si quieres puedes cambiar tambiar las variables correspondientes al usuario y administrador de `GRAFANA`, y en el caso de que quieras añadir masa usuarios, tendrás que modificar la variable `GF_SECURITY_ADMIN_PASSWORD`.

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

