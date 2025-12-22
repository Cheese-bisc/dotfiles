-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<C-n>", "<cmd>:NvimTreeFindFileToggle<cr>", {})

map("n", "<C-c>", ":%y+<CR>", { silent = true, desc = "Copy whole file to clipboard" })
map("n", "<leader>/", "gcc", { desc = "Toggle comment line", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment selection", remap = true })
map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<leader>x", "<cmd>bdelete<cr>", { desc = "Close buffer" })
