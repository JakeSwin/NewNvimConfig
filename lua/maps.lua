local map = vim.api.nvim_set_keymap

map('n', '<Space>', '', {})
vim.g.mapleader = ' '

options = { noremap = true }

-- map('n', 'j', 'k', options)
-- map('n', 'k', 'j', options)
-- map('v', 'j', 'k', options)
-- map('v', 'k', 'j', options)
map('n', '<C-h>', '<C-w>h', options)
map('n', '<C-j>', '<C-w>j', options)
map('n', '<C-k>', '<C-w>k', options)
map('n', '<C-l>', '<C-w>l', options)

map('n', '<Leader>v', ':CHADopen<CR>', options)
