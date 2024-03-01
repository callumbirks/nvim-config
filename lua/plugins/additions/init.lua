return {
    -- UndoTree
    {
        "mbbill/undotree",
        cmd = "UndotreeToggle",
        keys = {
            {
                "<leader>fu",
                vim.cmd.UndotreeToggle,
                desc = "Toggle Undotree",
            },
        },
        config = function()
            vim.g.undotree_SetFocusWhenToggle = 1
            vim.g.undotree_WindowLayout = 3
            vim.g.undotree_SplitWidth = 40
        end,
    },
    -- Amazing Rust support
    {
        "mrcjkb/rustaceanvim",
        version = "^4",
        ft = { "rust" },
        opts = {
            server = {
                on_attach = function(client, bufnr)
                    local wk = require("which-key")
                    wk.register({
                        ["<leader>cR"] = { function() vim.cmd.RustLsp("codeAction") end, "Code Action" },
                        ["<leader>dr"] = { function() vim.cmd.RustLsp("debuggables") end, "Rust debuggables" },
                    }, { mode = "n", buffer = bufnr })
                end,
                default_settings = {
                    ["rust-analyzer"] = {
                        cargo = {
                            allFeatures = true,
                            loadOutDirsFromCheck = true,
                            runBuildScripts = true,
                        },
                        checkOnSave = {
                            allFeatures = true,
                            command = "clippy",
                            extraArgs = { "--no-deps" },
                        },
                        procMacro = {
                            enable = true,
                            ignored = {
                                ["async-trait"] = { "async_trait" },
                                ["napi-derive"] = { "napi" },
                                ["async-recursion"] = { "async_recursion" },
                            },
                        },
                    },
                },
            },
        },
        config = function(_, opts) vim.g.rustaceanvim = vim.tbl_deep_extend("force", {}, opts or {}) end,
    },
    require("plugins.additions.harpoon"),
}
