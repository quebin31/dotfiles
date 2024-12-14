-- ====================================================================
-- Author: Kevin DC
-- ====================================================================
---@diagnostic disable-next-line: undefined-global
local vim = vim

-- ====================================================================
-- Get defaults that most users want.
-- ====================================================================
vim.cmd('source ~/.config/nvim/defaults.vim')

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- ====================================================================
-- Change mapleader
-- ====================================================================
vim.g.mapleader = ','

-- ====================================================================
-- Plugins
-- ====================================================================
vim.opt.compatible = false

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.local/share/nvim/plugged')

-- Editor utilities
Plug('godlygeek/tabular')
Plug('google/vim-searchindex')
Plug('scrooloose/nerdcommenter')

-- Utility plugins
Plug('tpope/vim-eunuch')
Plug('lambdalisue/suda.vim')

if not vim.g.vscode then
    -- Editor utilities
    Plug('luochen1990/rainbow')
    Plug('airblade/vim-rooter')
    Plug('yuttie/comfortable-motion.vim')
    Plug('m4xshen/autoclose.nvim')

    -- Language support
    Plug('sheerun/vim-polyglot')
    Plug('jvirtanen/vim-octave')
    Plug('plasticboy/vim-markdown')

    -- Git utilities
    Plug('tpope/vim-fugitive')
    Plug('airblade/vim-gitgutter')
    Plug('sodapopcan/vim-twiggy')

    -- Utility plugins
    Plug('907th/vim-auto-save')
    Plug('iamcco/markdown-preview.nvim', { ['do'] = function() vim.fn['mkdp#util#install']() end })
    Plug('akinsho/toggleterm.nvim', { tag = 'v2.*' })

    -- Colorschemes
    Plug('hzchirs/vim-material')

    -- Sugarized UI
    Plug('majutsushi/tagbar')
    Plug('vim-airline/vim-airline')
    Plug('mhinz/vim-startify')
    Plug('vim-airline/vim-airline-themes')
    Plug('kristijanhusak/defx-icons')
    Plug('ryanoasis/vim-devicons')

    -- Conqueror of Completion
    Plug('neoclide/coc.nvim', { ['do'] = function() vim.fn['coc#util#install']() end })

    -- File tree
    Plug('nvim-tree/nvim-web-devicons')
    Plug('nvim-tree/nvim-tree.lua')
end

vim.call('plug#end')

vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')

-- ====================================================================
-- Full coloring background, fix in some terminals
-- ====================================================================
vim.opt.termguicolors = true -- Use true colors if supported by terminal
vim.opt.encoding = 'utf-8'

-- ====================================================================
-- Editor options
-- ====================================================================
vim.cmd('source ~/.config/nvim/editor.vim')

-- ====================================================================
-- Plugin options
-- ====================================================================
if not vim.g.vscode then
  vim.cmd('source ~/.config/nvim/plugins.vim')
end

-- ====================================================================
-- Functions
-- ====================================================================
if not vim.g.vscode then
  vim.cmd('source ~/.config/nvim/functions.vim')
end

-- ====================================================================
-- Map functions
-- ====================================================================
if not vim.g.vscode then
  vim.keymap.set('n', '<F4>', ':call SpellCheck()<CR>')
  vim.keymap.set('n', '<F5>', ':call NumberToggle()<CR>')
  vim.keymap.set('n', '<F6>', ':call CursorLineToggle()<CR>')
end

