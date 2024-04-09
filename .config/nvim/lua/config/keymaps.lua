-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Remap search jumps/half-page jumps

-- This file is automatically loaded by lazyvim.config.init
local map = vim.keymap.set

-- Center half-page jump
map("n", "<C-u>", "<C-u>zz", { remap = true })
map("n", "<C-d>", "<C-d>zz", { remap = true })

-- Center search
map("n", "N", "Nzzzv", { remap = true })
map("n", "n", "nzzzv", { remap = true })

-- "Multiple cursors"
map("n", "<leader>a", "*``cgn")
