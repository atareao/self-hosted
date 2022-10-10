# Instalación

[Vaultwarden](https://github.com/dani-garcia/vaultwarden) es un servidor no oficial de Bitwarden, un gestor de contraseñas que almacena la información en  una caja fuerte cifrada.

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/vaultwarden
mv sample.env .env
sed -i "s/vaultwarden.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir -p data
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
