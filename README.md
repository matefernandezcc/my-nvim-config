![image](https://cdn.thenewstack.io/media/2025/03/53f8c39d-novim-1024x768.jpg)
# Instalación de Nvim
Este proyecto te permite configurar tu entorno de **Neovim** con **NvChad** en una nueva PC.

## Requisitos

- **Neovim** y **NvChad** instalados en la PC.
[Página de NvChad](https://nvchad.com/docs/quickstart/install)
Comando para instalarlo
```bash
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
```

## Reemplazar la config de nvim local por la del repo
```bash
git clone git@github.com:matefernandezcc/my-nvim-config.git
cd my-nvim-config
rm -rf ~/.config/nvim
cp -r nvim ~/.config/nvim 
```
