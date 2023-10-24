local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<C-j>', ui.toggle_quick_menu)
vim.keymap.set('n', '<C-l>', ui.nav_prev)
vim.keymap.set('n', '<C-y>', ui.nav_next)
