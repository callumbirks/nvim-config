-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Make <C-c> the same as <Esc>
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Yank to end of line
vim.keymap.set("n", "Y", "yg$")

-- Yank into system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Paste without overriding yank buffer
vim.keymap.set("x", "<leader>p", '"_dP')

-- Delete without overriding yank buffer
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')
