vim.keymap.set({'n', 'v'}, '<C-c>', '"+y', {noremap=true, silent=true})
vim.keymap.set({'n', 'v'}, '<C-x>', 'c', {noremap=true, silent=true})
vim.keymap.set({'n', 'v'}, '<C-v>', '"+p', {noremap=true, silent=true})
vim.keymap.set('i', '<C-v>', '<C-r><C-o>+', {noremap=true, silent=true})

-- readline.nvim
local readline = require 'readline'
vim.keymap.set('!', '<M-f>', readline.forward_word)
vim.keymap.set('!', '<M-b>', readline.backward_word)
vim.keymap.set('!', '<C-a>', readline.beginning_of_line)
vim.keymap.set('!', '<C-e>', readline.end_of_line)
vim.keymap.set('!', '<M-d>', readline.kill_word)
vim.keymap.set('!', '<M-BS>', readline.backward_kill_word)
vim.keymap.set('!', '<C-w>', readline.unix_word_rubout)
vim.keymap.set('!', '<C-k>', readline.kill_line)
vim.keymap.set('!', '<C-u>', readline.backward_kill_line)

-- nvim-osc52
vim.keymap.set('n', '<leader>c', require('osc52').copy_operator, {expr = true})
vim.keymap.set('n', '<leader>cc', '<leader>c_', {remap = true})
vim.keymap.set('v', '<leader>c', require('osc52').copy_visual)

-- Indent without leaving visual mode
vim.keymap.set('v', '>', '>gv', {remap = false})
vim.keymap.set('v', '<', '<gv', {remap = false})

-- Delete without copy
vim.keymap.set({'n', 'v'}, 'd', '"_d', {remap = false})
