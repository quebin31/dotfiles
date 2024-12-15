---@diagnostic disable-next-line: undefined-global
local vim = vim

if not vim.g.vscode then
    local map_opts = { noremap = true, silent = true }

    vim.keymap.set('n', '<F4>', function()
        if vim.wo.spell then
            vim.opt_local.spell = false
            vim.opt_local.spelllang = 'es'
        else
            vim.opt_local.spell = true
            vim.opt_local.spelllang = 'es'
        end
    end, map_opts)

    vim.keymap.set('n', '<F5>', function()
        if vim.wo.relativenumber then
            vim.wo.number = true
            vim.wo.relativenumber = false
        else
            vim.wo.relativenumber = true
        end
    end, map_opts)

    vim.keymap.set('n', '<F6>', function()
        if vim.wo.cursorline or vim.wo.cursorcolumn then
            vim.wo.cursorline = false
            vim.wo.cursorcolumn = false
        else
            vim.wo.cursorline = true
            vim.wo.cursorcolumn = true
        end
    end, map_opts)
end

-- Autocommand for opening Startify on VimEnter when no arguments are passed
vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()
        if #vim.fn.argv() == 0 then
            vim.cmd('Startify')
            vim.cmd('wincmd w')
        end
    end
})
