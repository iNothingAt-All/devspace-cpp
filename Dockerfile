# Base de la imagen
FROM alpine:3

# Espacio de trabajo
WORKDIR /home

# Actualizar
RUN apk update && apk upgrade 

# Instalar programas
RUN apk add --no-cache \
	cmake \
	build-base \
	neovim