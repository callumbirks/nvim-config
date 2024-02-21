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
    },
    -- Harpoon
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = true,
        keys = function()
            local harpoon = require("harpoon")

            return {
                {
                    "<leader>a",
                    function() harpoon:list():append() end,
                    desc = "Harpoon file",
                },
                {
                    "<C-a>",
                    function() harpoon:list():select(1) end,
                },
                {
                    "<C-r>",
                    function() harpoon:list():select(2) end,
                },
                {
                    "<C-s>",
                    function() harpoon:list():select(3) end,
                },
                {
                    "<C-t>",
                    function() harpoon:list():select(4) end,
                },
                {
                    "<C-S-P>",
                    function() harpoon:list():prev() end,
                },
                {
                    "<C-S-N>",
                    function() harpoon:list():next() end,
                },
            }
        end,
    },
}
