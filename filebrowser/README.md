# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/filebrowser
mv sample.env .env
sed -i "s/filebrowser.tuservidor.es/el_fqdn_que_quieras/g" .env
touch filebrowser.db
touch filebrowser.json
mkdir srv
docker-compose up -d
docker-compose logs -f
```
