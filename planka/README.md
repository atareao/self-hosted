# Instalación

[planka](https://github.com/plankanban/planka) A Trello-like kanban board built with React and Redux..

## Features

* Create projects, boards, lists, cards, labels and tasks
* Add card members, track time, set a due date, add attachments, write comments
* Markdown support in a card description and comment
* Filter by members and labels
* Customize project background
* Real-time updates
* User notifications
* Internationalization


```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/planka
cp sample.env .env
sed -i "s/planka.tuservidor.es/el_fqdn_que_quieras/g" .env
mkdir data
```

Además recuerda cambiar la contraseña.

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
