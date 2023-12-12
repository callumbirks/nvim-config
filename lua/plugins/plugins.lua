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
        { "<leader>hu", ui.toggle_quick_menu, desc = "Harpoon UI" },
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
  {
    "civitasv/cmake-tools.nvim",
    opts = {
      cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
      cmake_soft_link_compile_commands = true,
      cmake_build_directory = "build",
    },
    keys = {
      { "<leader>cmb", "<cmd>CMakeBuild all<cr>", desc = "Build" },
      { "<leader>cmg", "<cmd>CMakeGenerate<cr>", desc = "Generate" },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>cm"] = { name = "cmake" },
        ["<leader>h"] = { name = "harpoon" },
      },
    },
  },
}
