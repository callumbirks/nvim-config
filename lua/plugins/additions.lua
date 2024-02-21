return {
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
}
