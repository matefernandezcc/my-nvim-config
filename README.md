![image](https://cdn.thenewstack.io/media/2025/03/53f8c39d-novim-1024x768.jpg)
# Instalación de Nvim
Este proyecto te permite configurar tu entorno de **Neovim** con **NvChad** en una nueva PC de manera automática usando Docker.

## Requisitos

- **Docker** instalado en tu sistema. [Instalar Docker](https://docs.docker.com/get-docker/).
- **Neovim** y **NvChad** instalados en la PC.

## Pasos para instalarlo en tu nueva PC

### 1. Clonar el repositorio y construir la imagen Docker

Primero, clona este repositorio en tu nueva máquina (o simplemente copia los archivos de configuración que usas en tu PC original):

```bash
git clone <url-del-repositorio>
cd <directorio-clonado>
Dentro del directorio donde tienes el archivo Dockerfile, construye la imagen de Docker que contiene tu configuración de NvChad:

```bash
docker build -t nvchad-container .
Este comando descargará las dependencias necesarias y configurará el contenedor con tu configuración de NvChad.

### 2. Ejecutar el contenedor
Una vez que la imagen esté construida, puedes ejecutar el contenedor para abrir Neovim con tu configuración personalizada:

```bash
docker run --rm -it nvchad-container
Este comando abrirá Neovim dentro del contenedor Docker, y podrás utilizarlo con tu configuración de NvChad.

### 3. (Opcional) Montar tu configuración desde tu máquina local
Si prefieres que tu configuración de NvChad se mantenga sincronizada entre diferentes máquinas sin tener que reconstruir la imagen cada vez, puedes usar un volumen para montar tu carpeta de configuración de Neovim en el contenedor:

```bash
docker run --rm -it -v ~/.config/nvim:/root/.config/nvim nvchad-container
Este comando hará que el contenedor use tu configuración de Neovim almacenada localmente en ~/.config/nvim de tu nueva PC.


