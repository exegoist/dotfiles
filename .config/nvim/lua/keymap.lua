vim.g.mapleader = ' '
local keymap = vim.keymap

keymap.set({ 'n', 'x' }, '<leader>p', '"0p')
keymap.set('n', '<leader>m', '<cmd>w<cr>')
keymap.set('n', '<leader>o', '<cmd>lua MiniFiles.open()<cr>')
