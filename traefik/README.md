# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/traefik
cp sample.env .env
cp sample.traefik.yml traefik.yml
touch acme.json
chmod 600 acme.json
htpasswd -nb usuario contraseña >> users.txt
docker network create proxy
docker-compose up -d
docker-compose logs -f
```
