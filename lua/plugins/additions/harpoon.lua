-- Harpoon
return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true,
    keys = function()
        local harpoon = require("harpoon")
        local conf = require("telescope.config").values

        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers")
                .new({}, {
                    prompt_title = "Harpoon",
                    finder = require("telescope.finders").new_table({
                        results = file_paths,
                    }),
                    previewer = conf.file_previewer({}),
                    sorter = conf.generic_sorter({}),
                })
                :find()
        end

        return {
            {
                "<leader>ha",
                function() harpoon:list():append() end,
                desc = "Harpoon Add buffer",
            },
            {
                "<leader>hu",
                function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
                desc = "Toggle Harpoon UI",
            },
            {
                "<leader>hx",
                function()
                    harpoon:list():clear()
                    harpoon.ui:close_menu()
                end,
                desc = "Clear Harpoon List",
            },
            {
                "<leader>fh",
                function() toggle_telescope(harpoon:list()) end,
                desc = "Find Harpoon buffers",
            },
            {
                "<C-n>",
                function() harpoon:list():select(1) end,
            },
            {
                "<C-e>",
                function() harpoon:list():select(2) end,
            },
            {
                "<C-i>",
                function() harpoon:list():select(3) end,
            },
            {
                "<C-g>",
                function() harpoon:list():prev() end,
            },
            {
                "<C-m>",
                function() harpoon:list():next() end,
            },
        }
    end,
}
