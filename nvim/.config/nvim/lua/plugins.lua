-- ====================================================================
-- Plugin options
-- ====================================================================
---@diagnostic disable-next-line: undefined-global
local vim = vim

-- ====================================================================
-- Heavy settings
-- ====================================================================
require('.plugins.init')
require('.plugins.airline')
require('.plugins.tagbar')
require('.plugins.coc')

-- ====================================================================
-- Magit
-- ====================================================================
vim.g.magit_auto_foldopen = 0

-- ====================================================================
-- Autosave vim
-- ====================================================================
vim.g.auto_save = 1
vim.g.auto_save_silent = 1
vim.g.auto_save_events = { "InsertLeave", "TextChanged" }

-- ====================================================================
-- Rainbow parentheses
-- ====================================================================
vim.g.rainbow_active = 1
vim.g.rainbow_conf = {
    separately = {
        cmake = 0,
    }
}

local map_opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-f>', ':call comfortable_motion#flick(200)<CR>', map_opts)
vim.keymap.set('n', '<C-b>', ':call comfortable_motion#flick(-200)<CR>', map_opts)
vim.keymap.set('', '<ScrollWheelDown>', ':call comfortable_motion#flick(50)<CR>', map_opts)
vim.keymap.set('', '<ScrollWheelUp>', ':call comfortable_motion#flick(-50)<CR>', map_opts)

-- ====================================================================
-- Rooter
-- ====================================================================
vim.g.rooter_silent_chdir = 1
vim.g.rooter_resolve_links = 1

-- ====================================================================
-- Startify
-- ====================================================================
vim.g.startify_fortune_use_unicode = 1
vim.keymap.set('n', '<leader>s', ':Startify<CR>', map_opts)
