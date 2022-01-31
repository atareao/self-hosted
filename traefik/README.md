# Installation

```
git clone git@github.com:atareao/self-hosted.git
cd self-hosted/traefik
mv sample.env .env
mv sample.traefik.yml traefik.yml
mv sample.users.txt users.txt
touch acme.json
htpasswd -nb usuario contraseña >> users.txt
docker-compose up -d
docker-compose logs -f
```
