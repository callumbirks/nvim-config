vim.g.mapleader = ' '

vim.keymap.set({ "n", "v", "x" }, "n", "h")
vim.keymap.set({ "n", "v", "x" }, "e", "j")
vim.keymap.set({ "n", "v", "x" }, "u", "k")
vim.keymap.set({ "n", "v", "x" }, "i", "l")
vim.keymap.set({ "n", "v", "x" }, "h", "n")
vim.keymap.set({ "n", "v", "x" }, "j", "e")
vim.keymap.set({ "n", "v", "x" }, "k", "u")
vim.keymap.set({ "n", "v", "x" }, "l", "i")

vim.keymap.set("n", "<C-w>n", "<C-w>h")
vim.keymap.set("n", "<C-w>e", "<C-w>j")
vim.keymap.set("n", "<C-w>u", "<C-w>k")
vim.keymap.set("n", "<C-w>i", "<C-w>l")
vim.keymap.set("n", "<C-w>h", "<C-w>n")
vim.keymap.set("n", "<C-w><C-n>", "<C-w>h")
vim.keymap.set("n", "<C-w><C-e>", "<C-w>j")
vim.keymap.set("n", "<C-w><C-u>", "<C-w>k")
vim.keymap.set("n", "<C-w><C-i>", "<C-w>l")
vim.keymap.set("n", "<C-w><C-h>", "<C-w>n")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "E", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "U", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "E", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-h>", "<C-u>zz")
vim.keymap.set("n", "h", "nzzzv")
vim.keymap.set("n", "H", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>y", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end)

vim.keymap.set("n", "<C-u>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-e>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>u", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>e", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>t", function()
    vim.cmd.split()
    vim.cmd.terminal()
end)
