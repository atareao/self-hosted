# Note Mark

## About Note Mark

- [Note Mark in atareao.es](https://atareao.es/podcast/tus-notas-en-la-nube-con-note-mark/#comment-27564)
- [GitHub Note Mark](https://github.com/enchant97/note-mark)

## Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/navidrome
mkdir music data
cp sample.env .env
sed -i 's/notemark.tuservidor.es/la-url-que-quieras/g' .env
```

Generate a secret key for the JWT token
```bash
tr -dc A-Za-z0-9 </dev/urandom | head -c 12; echo
```

Replace the `JWT_SECRET` value in the `.env` file with the generated key.
```bash

If you want to work with Traefik,

```bash
docker-compose -f docker-compose.yml -f docker-compose.traefik.yml up -d
docker-compose logs -f
```

If you want to work with Caddy,

```bash
docker-compose -f docker-compose.yml -f docker-compose.caddy.yml up -d
docker-compose logs -f
```
