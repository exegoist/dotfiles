vim.g.mapleader=' '
local keymap=vim.keymap

keymap.set('n', '<c-a>', 'ggVG')

keymap.set({'n','x'}, '<leader>p', '"0p')

-- keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>m', '<cmd>w<cr>')
-- keymap.set('n', '<leader>x', '<cmd>x<cr>')

keymap.set('n', '<leader>o', '<cmd>Oil<cr>')
keymap.set('n', '<leader>n', '<cmd>Neorg index<cr>')
