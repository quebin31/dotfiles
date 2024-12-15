-- ====================================================================
-- Coc.nvim settings
-- ====================================================================
---@diagnostic disable-next-line: undefined-global
local vim = vim

-- Set global extensions
vim.g.coc_global_extensions = {
    'coc-json',
    'coc-css',
    'coc-svelte',
    'coc-pyls',
    'coc-deno',
    'coc-lua',
    'coc-docker',
    'coc-sh',
    'coc-snippets',
    'coc-lightbulb',
    'coc-symbol-line',
    'coc-sql',
    'coc-toml',
    'coc-yaml',
    'coc-vimlsp'
}

local coc_pumvisible = vim.fn['coc#pum#visible']
local coc_pumnext = vim.fn['coc#pum#next']
local coc_pumprev = vim.fn['coc#pum#prev']
local coc_pumconfirm = vim.fn['coc#pum#confirm']
local coc_refresh = vim.fn['coc#refresh']

-- Function to check backspace
local function check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Key mappings for completio
local map_opts = { noremap = true, silent = true, expr = true }

vim.keymap.set('i', '<C-Space>', coc_refresh, map_opts)

vim.keymap.set('i', '<Tab>', function()
    if coc_pumvisible() == 1 then
        return coc_pumnext(1)
    elseif check_back_space() then
        return '<Tab>'
    else
        return coc_refresh()
    end
end, map_opts)

vim.keymap.set('i', '<S-Tab>', function()
    if coc_pumvisible() == 1 then
        return coc_pumprev(1)
    else
        return '<S-Tab>'
    end
end, map_opts)

vim.keymap.set('i', '<CR>', function()
    if coc_pumvisible() == 1 then
        return coc_pumconfirm()
    else
        return '<CR>'
    end
end, map_opts)

-- Key mappings for navigation and actions
local goto_map_opts = { silent = true, nowait = true }
vim.keymap.set('n', 'gd', '<Plug>(coc-definition)', goto_map_opts)
vim.keymap.set('n', 'gy', '<Plug>(coc-type-definition)', goto_map_opts)
vim.keymap.set('n', 'gi', '<Plug>(coc-implementation)', goto_map_opts)
vim.keymap.set('n', 'gr', '<Plug>(coc-references)', goto_map_opts)

-- Function to show documentation
local function show_documentation()
    if vim.bo.filetype == 'vim' then
        vim.cmd('h ' .. vim.fn.expand('<cword>'))
    else
        vim.fn.CocActionAsync('doHover')
    end
end

-- Map K to show documentation
vim.keymap.set('n', 'K', show_documentation, { noremap = true, silent = true })

-- Rename symbol
vim.keymap.set('n', '<leader>rn', '<Plug>(coc-rename)', { silent = true })

-- Code actions
vim.keymap.set('n', '<leader>ac', '<Plug>(coc-codeaction)', { silent = true })
vim.keymap.set('v', '<leader>a', '<Plug>(coc-codeaction-selected)', { silent = true })
vim.keymap.set('n', '<leader>a', '<Plug>(coc-codeaction-selected)', { silent = true })
vim.keymap.set('n', '<leader>cl', '<Plug>(coc-codelens-action)', { silent = true, nowait = true })

-- Format selected region or buffer
vim.keymap.set('v', '<leader>f', '<Plug>(coc-format-selected)', { silent = true })
vim.keymap.set('n', '<leader>f', '<Plug>(coc-format-selected)', { silent = true })

-- Format and organize imports
vim.api.nvim_create_user_command('Format', "call CocAction('format')", {})
vim.api.nvim_create_user_command('OR', "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

local scroll_opts = { silent = true, nowait = true, expr = true }
vim.keymap.set("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', scroll_opts)
vim.keymap.set("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', scroll_opts)
vim.keymap.set("i", "<C-f>", 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', scroll_opts)
vim.keymap.set("i", "<C-b>", 'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', scroll_opts)
vim.keymap.set("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', scroll_opts)
vim.keymap.set("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', scroll_opts)

-- Coc list mappings
local coc_list_opts = { silent = true, nowait = true }
vim.keymap.set('n', '<space>a', ':<C-u>CocList diagnostics<CR>', coc_list_opts)
vim.keymap.set('n', '<space>e', ':<C-u>CocList extensions<CR>', coc_list_opts)
vim.keymap.set('n', '<space>c', ':<C-u>CocList commands<CR>', coc_list_opts)
vim.keymap.set('n', '<space>o', ':<C-u>CocList outline<CR>', coc_list_opts)
vim.keymap.set('n', '<space>s', ':<C-u>CocList -I symbols<CR>', coc_list_opts)
vim.keymap.set('n', '<space>j', ':<C-u>CocNext<CR>', coc_list_opts)
vim.keymap.set('n', '<space>k', ':<C-u>CocPrev<CR>', coc_list_opts)
vim.keymap.set('n', '<space>p', ':<C-u>CocListResume<CR>', coc_list_opts)
