# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/focalboard
cp sample.env .env
sed -i "s/focalboard.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir -p data files
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

## Registering the first user

After installing the server, open a browser to the domain you used. You should be redirected to the login screen. Click the link to register a new user instead, and complete the registration.

The first user registration will always be permitted, but subsequent registrations will require an invite link which includes a code. You can invite additional users by clicking on your username in the top left, then selecting “Invite users”
