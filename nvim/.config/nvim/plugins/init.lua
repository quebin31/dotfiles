require('autoclose').setup()
require('nvim-tree').setup()

vim.g.mapleader = ','
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<cr>', { silent = true, noremap = true})
vim.keymap.set('n', '<leader>f', ':NvimTreeFindFileToggle<cr>', { silent = true, noremap = true})
vim.keymap.set('n', '<leader>m', ':NvimTreeFocus<cr>', { silent = true, noremap = true})
