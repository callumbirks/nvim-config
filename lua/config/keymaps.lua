-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set({ "i", "x", "v", "n" }, "<C-c>", "<Esc>")

vim.keymap.set({ "i", "x", "v", "n" }, "y", "y")
vim.keymap.set({ "i", "x", "v", "n" }, "p", "p")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "Y", "yg$")

vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Yank into system clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Yank into system clipboard" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "Yank until EOL into system clipboard"})
