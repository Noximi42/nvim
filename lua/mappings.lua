require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" }) -- i don't like this remap by nvchad
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")



-- my mappings
map("i", "<C-c>", "<ESC>")
map("n", "<C-c>", ":noh<CR>")

map("x", "p", "\"_dP")

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("n", "<C-j>", "<C-e>", { remap = true })
map("n", "<C-k>", "<C-y>", { remap = true })
