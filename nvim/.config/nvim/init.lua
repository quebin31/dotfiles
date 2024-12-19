-- ====================================================================
-- Author: Kevin DC
-- ====================================================================
---@diagnostic disable-next-line: undefined-global
local vim = vim

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ','

vim.opt.compatible = false

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
require('.editor')

-- ====================================================================
-- Load plugins
-- ====================================================================
if not vim.g.vscode then
    require('.lazy')
end

-- ====================================================================
-- Functions
-- ====================================================================
if not vim.g.vscode then
    require('.functions')
end
