local function get_args_input(args_str)
  local new_args = vim.fn.input("Run with args: " .. args_str)
  return new_args
end

local function get_args(config)
  local args = type(config.args) == "function" and (config.args() or {}) or config.args or {}
  local args_str = table.concat(args, "")
  config = vim.deepcopy(config)
  config.args = {
    args_str .. " " .. get_args_input(args_str),
  }
  return config
end

return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      {
        "<leader>da",
        function()
          require("dap").continue({ before = get_args })
        end,
        desc = "Run with Args",
      },
    },
  },
}
