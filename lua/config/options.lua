-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable sync with system clipboard
vim.opt.clipboard = ""

-- Disable LazyVim auto format
vim.g.autoformat = false

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Indent width 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- More context
vim.opt.scrolloff = 8

-- No wrap
vim.opt.wrap = false

-- Using undofile (with undotree)
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Stop search from being annoying
vim.opt.hlsearch = false
vim.opt.incsearch = true
