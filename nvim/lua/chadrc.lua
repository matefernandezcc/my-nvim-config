-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 
-- Este archivo es `chadrc.lua` o un archivo similar para las configuraciones de NvChad

---@type ChadrcConfig
local M = {}

-- Configuración de base46 para tema y estilo
M.base46 = {
  theme = "catppuccin",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

-- Configuración para LSP (Lenguajes de Programación)
M.lsp = {
  signature = true,  -- Mostrar firmas de funciones mientras escribes
}

-- Configuración para mason (Gestor de Paquetes)
M.mason = {
  pkgs = {
    "lua-language-server",
    "pyright",
    "clangd",
  },
}

-- Configuración para nvdash
M.nvdash = {
  load_on_startup = false,
  header = {
    "                            ",
    "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
    "   ▄▀███▄     ▄██ █████▀    ",
    "   ██▄▀███▄   ███           ",
    "   ███  ▀███▄ ███           ",
    "   ███    ▀██ ███           ",
    "   ███      ▀ ███           ",
    "   ▀██ █████▄▀█▀▄██████▄    ",
    "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
    "                            ",
    "     Powered By  eovim    ",
    "                            ",
  },

  buttons = {
    { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
    { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },

    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },

    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashLazy",
      no_gap = true,
    },

    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },
  },
}

-- Configuración de UI
M.ui = {
  cmp = {
    icons_left = false, -- Solo para estilos no atom!
    lspkind_text = true, -- Mostrar tipos en el autocompletado
    style = "default",   -- default/flat_light/flat_dark/atom/atom_colored
  },

  telescope = {
    style = "borderless", -- Estilo de bordes para Telescope
  },

  statusline = {
    enabled = true,
    theme = "default", -- default/vscode/vscode_colored/minimal
    separator_style = "default", -- Estilo de separadores en la línea de estado
  },

  tabufline = {
    enabled = true,
    lazyload = true, -- Cargar solo cuando haya más de 1 buffer abierto
    order = { "treeOffset", "buffers", "tabs", "btns" }, -- Orden de elementos en la barra
  },
}

-- Configuración de colorify
M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

return M

