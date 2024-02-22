return {
    -- Make TokyoNight transparent
    {
        "folke/tokyonight.nvim",
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
    },
    -- Disable bufferline (tabs)
    {
        "akinsho/bufferline.nvim",
        enabled = false,
    },
    -- Disable tab in LuaSnip
    {
        "L3MON4D3/LuaSnip",
        keys = function() return {} end,
    },
    -- Add some symbol search keymaps
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            { "<leader>fs", "<cmd>Telescope lsp_document_symbols<CR>", desc = "Find Document Symbols" },
            { "<leader>fS", "<cmd>Telescope lsp_workspace_symbols<CR>", desc = "Find Workspace Symbols" },
        },
    },
    -- Give noice doc windows a border (better for transparent)
    {
        "folke/noice.nvim",
        opts = {
            presets = {
                lsp_doc_border = true,
            },
        },
    },
    -- Make cmp windows look the same
    {
        "hrsh7th/nvim-cmp",
        opts = function(_, opts)
            local border = {
                { "╭", "FloatBorder" },
                { "─", "FloatBorder" },
                { "╮", "FloatBorder" },
                { "│", "FloatBorder" },
                { "╯", "FloatBorder" },
                { "─", "FloatBorder" },
                { "╰", "FloatBorder" },
                { "│", "FloatBorder" },
            }

            vim.cmd("hi Pmenu guibg=NONE")
            vim.cmd("hi Pmenu blend=0")
            vim.cmd("hi FloatBorder blend=0")
            opts.window = {
                completion = {
                    winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,Search:None",
                    scrollbar = false,
                    border = border,
                },
                documentation = {
                    winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,Search:None",
                    border = border,
                },
            }
            return opts
        end,
    },
}
