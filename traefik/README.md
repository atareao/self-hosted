# Installation

```
git clone git@github.com:atareao/dockers.git
cd dockers/traefik
mv sample.env .env
mv sample.traefik.yml traefik.yml
mv sample.users.txt users.txt
touch acme.json
htpasswd -nb usuario contraseña >> traefik/users.txt
```
