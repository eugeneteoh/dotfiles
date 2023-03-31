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
