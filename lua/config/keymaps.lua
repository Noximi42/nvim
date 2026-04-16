-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "<C-c>", "<ESC>")
map("n", "<C-c>", "<ESC>")
map("n", "<C-c>", ":noh<CR>")

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Add empty line below without entering insert mode
map("n", "<leader>o", "o<Esc>", { desc = "Add line below" })
map("n", "<leader>O", "O<Esc>", { desc = "Add line above" })

-- Move cursor in insert mode with Ctrl + hjkl
map("i", "<C-h>", "<Left>", { desc = "Move left" })
map("i", "<C-l>", "<Right>", { desc = "Move right" })
-- map("i", "<C-j>", "<Down>", { desc = "Move down" })
-- map("i", "<C-k>", "<Up>", { noremap = true, desc = "Move up" }) -- not working since C-k is used by other command
