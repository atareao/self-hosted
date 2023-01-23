# Instalación

[Logseq](https://logseq.com/) Logseq is a privacy-first, open-source knowledge base that works on top of local plain-text Markdown and Org-mode files. Use it to write, organize and share your thoughts, keep your to-do list, and build your own digital garden. 

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/logseq
cp sample.env .env
sed -i "s/logseq.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir data
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
