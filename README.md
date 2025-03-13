![image](https://cdn.thenewstack.io/media/2025/03/53f8c39d-novim-1024x768.jpg)
# Instalación de Nvim
Este proyecto te permite configurar tu entorno de **Neovim** con **NvChad** en una nueva PC de manera automática usando Docker.

## Requisitos

- **Docker** instalado en tu sistema. [Instalar Docker](https://docs.docker.com/get-docker/).
- **Neovim** y **NvChad** instalados en la PC.

## Pasos para instalarlo en tu nueva PC

### 1. Clonar el repositorio y construir la imagen Docker

Primero, clona este repositorio en tu nueva máquina
```bash
git clone git@github.com:matefernandezcc/my-nvim-config.git
cd my-nvim-config
```

Dentro del directorio donde esta el archivo Dockerfile, construi la imagen de Docker que contiene la configuración de NvChad:
```bash
docker build -t nvchad-container .
```
Este comando descarga las dependencias necesarias y configura el contenedor.

### 2. Ejecutar el contenedor
Una vez que la imagen esté construida, ejecuta el contenedor para abrir Neovim con tu configuración personalizada:

```bash
docker run --rm -it nvchad-container
```
Este comando abre Neovim dentro del contenedor Docker, y podes usarlo con la configuración de NvChad.

