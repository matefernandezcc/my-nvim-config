![image](https://cdn.thenewstack.io/media/2025/03/53f8c39d-novim-1024x768.jpg)
# Instalación de Nvim
Este proyecto te permite configurar tu entorno de **Neovim** con **NvChad** en una nueva PC.

## Requisitos
- [NvChad](https://nvchad.com/docs/quickstart/install) 0.10.
- Nerd Font as your terminal font.
  Make sure the nerd font you set doesn't end with Mono to prevent small icons.
  Example : JetbrainsMono Nerd Font and not JetbrainsMono Nerd Font Mono
- Ripgrep is required for grep searching with Telescope (OPTIONAL).
- Delete old neovim folders (check commands below)
```bash
# Linux / MacOS (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

Comando para Instalar NvChad
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
