require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Map <C-z> a comando u para deshacer
map("n", "<C-z>", "u", { noremap = true, silent = true })

-- Map para pegar desde el clipboard usando <C-c> y <C-v>
map("v", "<C-c>", '"+y', { noremap = true, silent = true }) -- Copiar (v)
map("n", "<C-x>", "dd", { noremap = true, silent = true }) -- Cortar (n)
map("n", "<C-v>", "P", { noremap = true, silent = true })  -- Pegar (n)



