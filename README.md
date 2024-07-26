# devspace-cpp
## Windows
Se usa WSL para la ejecución de Docker en Windows.
- `wsl --list --online`
- `wsl --install -d <distro>`

> Recomendado: Debian

Ejecutar entorno Linux con WSL 
- `wsl -d <distro>`

## Linux
La instalación de Docker depende de la distribución de Linux
> Pero por preferencia se usara Debian
- [Instalación de Docker](https://docs.docker.com/engine/install/debian/)
- [Grupo de privilegios](https://docs.docker.com/engine/install/linux-postinstall/)

## Construcción
Docker Compose hace el trabajo de construir tanto imagen como contenedor
-  `docker compose build`
-  `docker compose up -d`

En caso de "Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?"
- `sudo service docker start`

Para correr el contenedor
- `docker compose start`
- `docker exec -it devspace sh`

Para detener el contenedor y borrar todo (imagen y contenedor)
- `docker compose stop`
- `docker compose rm`
