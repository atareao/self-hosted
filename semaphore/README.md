# Instalación

Ansible Semaphore es una interfaz de usuario moderna para Ansible. Permite ejecutar fácilmente playbooks de Ansible, recibir notificaciones sobre fallos y controlar el acceso al sistema de implementación.

Si tu proyecto ha crecido y la implementación desde la terminal ya no es para ti, entonces Ansible Semaphore es lo que necesitas.

git clone https://github.com/atareao/self-hosted.git
cd self-hosted/semaphore
cp sample.env .env
sed -i "s/semaphore.tuservidor.es/el_fqdn_que_quieras/g" .env
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
