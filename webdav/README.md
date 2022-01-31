# Installation

⚠ First! Change `user` and `password` in `docker-compose`

```
git clone git@github.com:atareao/self-hosted.git
cd self-hosted/webdav
sed -i "s/user/your-user/" docker-compose.yml
sed -i "s/passwd/your-password/" docker-compose.yml
mkdir share
docker-compose up -d
docker-compose logs -f
```

After this, open webbrowser at `http://localhost:8080`, and use `user` and `password` as configured.
