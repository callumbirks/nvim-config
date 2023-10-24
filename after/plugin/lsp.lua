local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbols() end, opts)
	vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set('n', '<leader>vca', function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set('n', '<leader>vrr', function() vim.lsp.buf.references() end, opts)
	vim.keymap.set('n', '<leader>vrn', function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set('n', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
end)

local lsps = { 'lua_ls', 'clangd', 'cmake', 'rust_analyzer' }

require('mason-lspconfig').setup {
    ensure_installed = lsps,
}

lsp.skip_server_setup({ 'rust_analyzer' })

require('lspconfig').lua_ls.setup {
	settings = {
		Lua = {
			diagnostics = {
				globals = {'vim'},
			}
		}
	}
}

lsp.setup()

require('rust-tools').setup()

local cmp = require('cmp')

cmp.setup({
	sources = {{ name = 'nvim_lsp' }},
	mapping = cmp.mapping.preset.insert({
		['<C-p>'] = cmp.mapping.select_prev_item(),
		['<C-n>'] = cmp.mapping.select_next_item(),
		['<C-s>'] = cmp.mapping.confirm(),
		['<C-Space>'] = cmp.mapping.complete(),
	}),
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
})
