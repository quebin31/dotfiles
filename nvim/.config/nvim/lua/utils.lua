---@diagnostic disable-next-line: undefined-global
local vim = vim
local module = {}

function module.is_nvim()
    return not vim.g.vscode
end

function module.only_nvim(name)
    return { [1] = name, cond = module.is_nvim }
end

return module
