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

map('n', '<Leader>ff', ':Telescope find_files<CR>', options)
map('n', '<Leader>fg', ':Telescope live_grep<CR>', options)
map('n', '<Leader>fb', ':Telescope buffers<CR>', options)
map('n', '<Leader>fh', ':Telescope help_tags<CR>', options)
