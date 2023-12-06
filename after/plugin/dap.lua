require('mason').setup()

local dap, dapui = require("dap"), require("dapui")

local mason_registry = require("mason-registry")
local codelldb_root = mason_registry.get_package("codelldb"):get_install_path() .. "/extension/"
local codelldb_path = codelldb_root .. "adapter/codelldb"

dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    host = "127.0.0.1",
    executable = {
        command = codelldb_path,
        args = { "--port", "${port}" },
    },
    showDisassembly = "never",
}

dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        args = {
            function()
                return vim.fn.input('Progam args: ')
            end, },
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
    },
}

require("nvim-dap-virtual-text").setup()
dapui.setup()

dap.listeners.after.event_initialized['dapui_config'] = function()
    dapui.open()
end

dap.listeners.before.event_terminated['dapui_config'] = function()
    dapui.close()
end

dap.listeners.before.event_exited['dapui_config'] = function()
    dapui.close()
end

vim.keymap.set('n', '<leader>db', vim.cmd.DapToggleBreakpoint)
vim.keymap.set('n', '<leader>dr', vim.cmd.DapContinue)
vim.keymap.set('n', '<leader>drt', vim.cmd.DapTerminate)
vim.keymap.set('n', '<leader>dt', ":lua require('dapui').toggle()<CR>")
vim.keymap.set('n', '<leader>dq', ":lua require('dapui').close()<CR>")
vim.keymap.set('n', '<F8>', vim.cmd.DapStepOver)
vim.keymap.set('n', '<F7>', vim.cmd.DapStepInto)
vim.keymap.set('n', '<F9>', vim.cmd.DapStepOut)
vim.keymap.set('n', '<leader>di', vim.cmd.DapToggleRepl)
