FROM ubuntu:latest

# Instalar dependencias necesarias
RUN apt update && apt install -y \
    curl git neovim ripgrep fd-find \
    && rm -rf /var/lib/apt/lists/*

# Clonar NvChad en la configuración de Neovim
RUN git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Copiar tu configuración personalizada (crea el directorio primero)
COPY nvim ~/.config/nvim/lua/custom

# Configurar como entrypoint para abrir nvim directamente
ENTRYPOINT ["nvim"]
