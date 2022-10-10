# Instalación

[Wallabag](https://github.com/wallabag/wallabag) es un servicio para guardar artículos y leerlos más tarde en formato de texto (read it later).

```
cp sample.env .env
sed -i "s/wallabag.tuservidor.es/el_fqdn_que_quieras/g" .env
sed -i "s/Tu Servidor Linux/el nombre que quieras/g" .env
mkdir images data
docker-compose up -d
```
