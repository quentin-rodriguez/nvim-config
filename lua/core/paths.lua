local fn = vim.fn
local M = {}

function M.join(...)
    return table.concat({...}, '/')
end

M.home = vim.env.HOME

M.config = fn.stdpath("config")

M.plugins = M.join(fn.stdpath('data'), 'site/pack/packer/start/packer.nvim')

M.compile = M.join(fn.stdpath('data'), 'site/pack/loader/start/packer.nvim/lua/packer_compiled.lua')


return M