-- ====================================================================
-- Editor options
-- ====================================================================
---@diagnostic disable-next-line: undefined-global
local vim = vim

-- ====================================================================
-- Colorschemes
-- ====================================================================
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.cmd('colorscheme vim-material')

vim.api.nvim_set_hl(0, 'Normal', { bg = 'none', ctermbg = 'none' })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none', ctermbg = 'none' })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = '#1f1f1f' })

-- ====================================================================
-- Options
-- ====================================================================
vim.g.pastetoggle = '<F12>' -- Toggle paste mode with F12 key
vim.opt.updatetime = 0 -- Faster updates
vim.opt.laststatus = 2 -- Always display status line
vim.opt.swapfile = false -- Don't create swap files
vim.opt.autoread = true -- Read files that change externally
vim.opt.number = true -- Enable line numbers
vim.opt.relativenumber = true -- Enable relative numbers
vim.opt.linebreak = false -- Don't break lines at words
vim.opt.wrap = false -- Don't wrap lines
vim.opt.showmatch = true -- Highlight matching braces
vim.opt.visualbell = true -- No beeping
vim.opt.hlsearch = true -- Highlight all search results
vim.opt.smartcase = true -- Enable smart case search
vim.opt.ignorecase = true -- Case insensitive search by default
vim.opt.incsearch = true -- Incremental search
vim.opt.autoindent = true -- Auto-indent lines
vim.opt.cindent = true -- C-like indenting
vim.opt.tabstop = 4 -- 4 columns per tab
vim.opt.shiftwidth = 4 -- Auto-indent spaces (4 spaces)
vim.opt.softtabstop = 4 -- Tab inserts 4 spaces
vim.opt.smartindent = true -- Smart indenting
vim.opt.smarttab = true -- Smart tabs
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.ruler = true -- Show row and column ruler information
vim.opt.undolevels = 1000 -- Number of undo levels
vim.opt.backspace = { 'indent', 'eol', 'start' } -- Backspace behavior
vim.opt.textwidth = 90 -- Max text width for lines
vim.opt.foldmethod = 'syntax' -- Syntax-based folding
vim.opt.foldlevelstart = 99 -- Don't close folds automatically on start-up
vim.opt.clipboard:append('unnamedplus') -- Use system clipboard

-- ====================================================================
-- Keybindings
-- ====================================================================
local map_opts = { noremap = true, silent = true }

-- Disable F1 help keybinding
vim.keymap.set('n', '<F1>', '<nop>', map_opts)

-- Moving across splits with Ctrl + Arrow keys or Ctrl + HJKL keys
local split_mappings = {
    ['<C-Up>']    = '<C-W><C-K>',
    ['<C-Down>']  = '<C-W><C-J>',
    ['<C-Right>'] = '<C-W><C-L>',
    ['<C-Left>']  = '<C-W><C-H>',
    ['<C-K>']     = '<C-W><C-K>',
    ['<C-J>']     = '<C-W><C-J>',
    ['<C-H>']     = '<C-W><C-H>',
    ['<C-L>']     = '<C-W><C-L>'
}

for k, v in pairs(split_mappings) do
    vim.keymap.set('n', k, v, map_opts)
end

-- Leader key + l to switch to the previous split buffer
vim.keymap.set('n', '<leader>l', '<C-W><C-P>', map_opts)

-- Escape key in terminal mode to go to normal mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-N>]], map_opts)

-- Folding bindings with F9 key in different modes (insert, normal, visual)
local fold_mappings = {
    ['i'] = '<C-O>za',
    ['n'] = 'za',
    ['o'] = '<C-C>za',
    ['v'] = 'zf',
}

for k, v in pairs(fold_mappings) do
    vim.keymap.set(k, '<F-9>', v, map_opts)
end

