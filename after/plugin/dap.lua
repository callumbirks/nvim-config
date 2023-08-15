require('mason-nvim-dap').setup({
    ensure_installed = { 'codelldb' }
})

local dap, dapui = require("dap"), require("dapui")

dap.listeners.after.event_initialized['dapui_config'] = function ()
    dapui.open()
end

dap.listeners.before.event_terminated['dapui_config'] = function()
    dapui.close()
end

dap.listeners.before.event_exited['dapui_config'] = function()
    dapui.close()
end

vim.keymap.set('n', '<leader>dbp', vim.cmd.DapToggleBreakpoint)
vim.keymap.set('n', '<leader>dr', vim.cmd.DapContinue)
vim.keymap.set('n', '<leader>drt', vim.cmd.DapTerminate)
vim.keymap.set('n', '<F8>', vim.cmd.DapStepOver)
vim.keymap.set('n', '<F7>', vim.cmd.DapStepInto)
vim.keymap.set('n', '<F9>', vim.cmd.DapStepOut)
vim.keymap.set('n', '<leader>di', vim.cmd.DapToggleRepl)
