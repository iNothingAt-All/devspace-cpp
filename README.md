# devspace-cpp
## Correr el proyecto
```
git clone https://github.com/iNothingAt-All/devspace-cpp
cd devspace-cpp && cd build
cmake .. && ./main 
```

## Usar el proyecto con Docker
### Windows
Se puede usar WSL para la ejecución de Docker en Windows. WSL ya viene integrado en windows por lo que se puede ejecutar desdes la consola
#### Como instalar distribuciones Linux con WSL
- `wsl --list --online`
- `wsl --install -d <distribución a instalar>`

> Recomendado: Debian

#### Como ejecutar distribuciones Linux con WSL 
- `wsl -d <distribución instalada>`

### Linux
#### Instalación de Docker
La instalación de Docker depende de la distribución de Linux
> Pero por preferencia se usará Debian
- [Instalación de Docker](https://docs.docker.com/engine/install/debian/)
- [Grupo de privilegios](https://docs.docker.com/engine/install/linux-postinstall/) (Opcional)

#### Como construir el proyecto en un contenedor
Docker Compose hace el trabajo de construir tanto imagen como contenedor usando:
```
docker compose build
docker compose up -d
```
#### Como ejecutar el contenedor
Para correr el contenedor y ejecutar, se puede usar:
```
docker compose start
docker exec -it devspace sh
```

#### Como eliminar el contenedor
Para detener los contenedores y eliminarlos, se puede usar:
```
docker compose stop
docker compose rm
```

### Posibles errores al ejecutar Docker
#### Error Cannot connect
En caso de un error de tipo: "**Cannot connect to the Docker daemon at ...**", se puede solucionar mediante:
- `sudo service docker start`

#### Error Permission denied
En caso de un error de tipo: "**Docker: Got permission denied while trying ...**", se pude solucionar de dos formar:
1. Se puede ejecutar Docker como root mediante `sudo`
  - `sudo docker ...`
  - `sudo docker compose ...`

2. Se puede añadir Docker a un [Grupo de privilegios](https://docs.docker.com/engine/install/linux-postinstall/). Esto evita la necesidad de usar sudo cada vez que se ejecuta un comando de Docker
