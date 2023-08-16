vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = {{ 'nvim-lua/plenary.nvim' }}
	}

	use { 'catppuccin/nvim', as = 'catppuccin' }

	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	use {
		'theprimeagen/harpoon',
		requires = {{ 'nvim-lua/plenary.nvim' }}
	}

	use 'mbbill/undotree'

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}

	use 'mfussenegger/nvim-dap'

    use {
        'rcarriga/nvim-dap-ui',
        requires = {{
            'mfussenegger/nvim-dap'
        }}
    }


    use { 'mfussenegger/nvim-lint', as = 'lint' }

    use {
        'jay-babu/mason-nvim-dap.nvim',
        requires = {
            { 'williamboman/mason.nvim' },
            { 'mfussenegger/nvim-dap' },
        }
    }

    use {
        'civitasv/cmake-tools.nvim',
        requires = {{ 'nvim-lua/plenary.nvim' }}
    }

    use 'vim-test/vim-test'

    use {
        'simrat39/rust-tools.nvim',
        requires = {
            { 'neovim/nvim-lspconfig' },
            { 'nvim-lua/plenary.nvim' },
            { 'mfussenegger/nvim-dap' }
        }
    }

    use 'lewis6991/gitsigns.nvim'

    use { 'akinsho/git-conflict.nvim' }

end)
