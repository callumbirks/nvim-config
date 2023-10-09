local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
    { "nvim-telescope/telescope.nvim", tag = "0.1.2", dependencies = {{ "nvim-lua/plenary.nvim" }} },

    { "catppuccin/nvim", name = "catppuccin" },

    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    { "theprimeagen/harpoon", dependencies = {{ "nvim-lua/plenary.nvim" }} },

    { "mbbill/undotree" },

    { "VonHeikemen/lsp-zero.nvim", branch = "v2.x", dependencies = {{
        "neovim/nvim-lspconfig", "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim",
        "hrsh7th/nvim-cmp", "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip" }} },

    { "mfussenegger/nvim-dap" },

    { "rcarriga/nvim-dap-ui", dependencies = {{ "mfussenegger/nvim-dap" }} },

    { "mfussenegger/nvim-lint", name = "lint" },

    { "jay-babu/mason-nvim-dap.nvim", dependencies = {{
        "williamboman/mason.nvim", "mfussenegger/nvim-dap" }} },

    { "civitasv/cmake-tools.nvim", lazy = true },

    { "vim-test/vim-test" },

    { "simrat39/rust-tools.nvim", dependencies = {{
        "neovim/nvim-lspconfig", "nvim-lua/plenary.nvim", "mfussenegger/nvim-dap" }} },

    { "lewis6991/gitsigns.nvim" },

    { "akinsho/git-conflict.nvim" },
})
