# Installation

Modifica `plausible-conf` configurandolo según tus necesidades y propia configuración. Cambia la url,

```
sed -i "s/plausible.tuservidor.com/el_fqdn_que_quieras/g" docker-compose.caddy.yml
sed -i "s/plausible.tuservidor.com/el_fqdn_que_quieras/g" docker-compose.traefik.yml
sed -i "s/plausible.tuservidor.com/el_fqdn_que_quieras/g" plausible-conf.env
```

Levanta el servicio utilizando Traefik,

```
docker-compose -f docker-compose.yml -f docker-compose.traefik.yml up -d
```

O levanta el servicio utilizando Caddy,

```
docker-compose -f docker-compose.yml -f docker-compose.caddy.yml up -d
```
