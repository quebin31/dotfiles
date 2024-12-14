---@diagnostic disable-next-line: undefined-global
local vim = vim

local function number_toggle()
  if vim.wo.relativenumber then
      vim.wo.number = true
      vim.wo.relativenumber = false
  else
      vim.wo.relativenumber = true
  end
end

local function cursor_line_toggle()
  if vim.wo.cursorline or vim.wo.cursorcolumn then
      vim.wo.cursorline = false
      vim.wo.cursorcolumn = false
  else
      vim.wo.cursorline = true
      vim.wo.cursorcolumn = true
  end
end

local function spell_check()
  if vim.wo.spell then
      vim.opt_local.spell = false
      vim.opt_local.spelllang = 'es'
  else
      vim.opt_local.spell = true
      vim.opt_local.spelllang = 'es'
  end
end

if not vim.g.vscode then
  -- Map functions to keys using Lua functions defined above.
  vim.keymap.set('n', '<F4>', spell_check, { noremap = true, silent = true })
  vim.keymap.set('n', '<F5>', number_toggle, { noremap = true, silent = true })
  vim.keymap.set('n', '<F6>', cursor_line_toggle, { noremap = true, silent = true })
end

-- Autocommand for opening Startify on VimEnter when no arguments are passed
local function auto_startify()
    if #vim.fn.argv() == 0 then
      vim.cmd('Startify')
      vim.cmd('wincmd w')
    end
end

vim.api.nvim_create_autocmd('VimEnter', {  callback = auto_startify })

