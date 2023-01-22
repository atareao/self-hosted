# Installation

```
git clone https://github.com/atareao/self-hosted.git
cd self-hosted/metube
cp sample.env .env
sed -i "s/metube.tuservidor.es/el_fqdn_que_quieras/g" .env
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

## Configuration via environment variables

Certain values can be set via environment variables, using the -e parameter on the docker command line, or the environment: section in docker-compose.

* `UID`: user under which MeTube will run. Defaults to 1000.
* `GID`: group under which MeTube will run. Defaults to 1000.
* `UMASK`: umask value used by MeTube. Defaults to 022.
* `DOWNLOAD_DIR`: path to where the downloads will be saved. Defaults to /downloads in the docker image, and . otherwise.
* `AUDIO_DOWNLOAD_DIR`: path to where audio-only downloads will be saved, if you wish to separate them from the video downloads. Defaults to the value of DOWNLOAD_DIR.
* `CUSTOM_DIRS`: whether to enable downloading videos into custom directories within the DOWNLOAD_DIR (or AUDIO_DOWNLOAD_DIR). When enabled, a drop-down appears next to the Add button to specify the download directory. Defaults to true.
* `CREATE_CUSTOM_DIRS`: whether to support automatically creating directories within the DOWNLOAD_DIR (or AUDIO_DOWNLOAD_DIR) if they do not exist. When enabled, the download directory selector becomes supports free-text input, and the specified directory will be created recursively. Defaults to false.
* `STATE_DIR`: path to where the queue persistence files will be saved. Defaults to /downloads/.metube in the docker image, and . otherwise.
* `URL_PREFIX`: base path for the web server (for use when hosting behind a reverse proxy). Defaults to /.
* `OUTPUT_TEMPLATE`: the template for the filenames of the downloaded videos, formatted according to this spec. Defaults to %(title)s.%(ext)s.
* `OUTPUT_TEMPLATE_CHAPTER`: the template for the filenames of the downloaded videos, when split into chapters via postprocessors. Defaults to %(title)s - %(section_number)s %(section_title)s.%(ext)s.
* `YTDL_OPTIONS`: Additional options to pass to youtube-dl, in JSON format. See available options here. They roughly correspond to command-line options, though some do not have exact equivalents here, for example --recode-video has to be specified via postprocessors. Also note that dashes are replaced with underscores.

More info in [metube](https://github.com/alexta69/metube)

