# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/nginx
mkdir html
cp sample.env .env
docker-compose -f docker-compose.yml -f docker-compose.traefik.yml up -d
docker-compose logs -f
```
