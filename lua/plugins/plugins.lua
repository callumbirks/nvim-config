return {
  {
    "mbbill/undotree",
    keys = { { "<leader>uu", "<cmd>UndotreeToggle<cr>", desc = "Toggle Undotree" } },
  },
  {
    "theprimeagen/harpoon",
    keys = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")
      return {
        { "<leader>ha", mark.add_file, desc = "Add File Mark" },
        { "<leader>ht", ui.toggle_quick_menu, desc = "Toggle Harpoon Menu" },
        {
          "<C-n>",
          function()
            ui.nav_file(1)
          end,
          desc = "Goto Mark 1",
        },
        {
          "<C-e>",
          function()
            ui.nav_file(2)
          end,
          desc = "Goto Mark 2",
        },
        {
          "<C-i>",
          function()
            ui.nav_file(3)
          end,
          desc = "Goto Mark 3",
        },
      }
    end,
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
}
