return {
    {
        "stevearc/conform.nvim",
        event = 'BufWritePre',
        opts = require("configs.conform"),
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
            },
        },
    },

    {
      "nvim-tree/nvim-tree.lua",
      config = function()
        require("nvim-tree").setup {
        filters = { dotfiles = false },
        disable_netrw = true,
        hijack_cursor = true,
        sync_root_with_cwd = true,
        update_focused_file = {
          enable = true,
          update_root = false,
        },
        view = {
          side = "right",
          width = 30,
          preserve_window_proportions = false,
        },
        renderer = {
          root_folder_label = false,
          highlight_git = true,
          indent_markers = { enable = false },
          icons = {
            glyphs = {
              default = "󰈚",
              folder = {
                default = "",
                empty = "",
                empty_open = "",
                open = "",
                symlink = "",
              },
              git = { unmerged = "" },
            },
          },
        },
      }
    end,
    },

}
