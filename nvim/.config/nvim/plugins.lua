-- ====================================================================
-- Plugin options
-- ====================================================================
---@diagnostic disable-next-line: undefined-global
local vim = vim

-- ====================================================================
-- Heavy settings
-- ====================================================================
require('.plugins.init')
vim.cmd('source ~/.config/nvim/plugins/coc.vim')
vim.cmd('source ~/.config/nvim/plugins/airline.vim')
vim.cmd('source ~/.config/nvim/plugins/tagbar.vim')

-- ====================================================================
-- Magit
-- ====================================================================
vim.g.magit_auto_foldopen = 0

-- ====================================================================
-- Autosave vim
-- ====================================================================
vim.g.auto_save = 1
vim.g.auto_save_silent = 1
vim.g.auto_save_events = {"InsertLeave", "TextChanged"}

-- ====================================================================
-- Rainbow parentheses
-- ====================================================================
vim.g.rainbow_active = 1
vim.g.rainbow_conf = {
    separately = {
        cmake = 0,
    }
}

vim.keymap.set('n', '<C-f>', ':call comfortable_motion#flick(200)<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-b>', ':call comfortable_motion#flick(-200)<CR>', { noremap = true, silent = true })
vim.keymap.set('', '<ScrollWheelDown>', ':call comfortable_motion#flick(50)<CR>', { noremap = true, silent = true })
vim.keymap.set('', '<ScrollWheelUp>', ':call comfortable_motion#flick(-50)<CR>', { noremap = true, silent = true })

-- ====================================================================
-- Rooter
-- ====================================================================
vim.g.rooter_silent_chdir = 1
vim.g.rooter_resolve_links = 1

-- ====================================================================
-- Startify
-- ====================================================================
vim.g.startify_fortune_use_unicode = 1
vim.keymap.set('n', '<leader>s', ':Startify<CR>', { noremap = true, silent = true })

