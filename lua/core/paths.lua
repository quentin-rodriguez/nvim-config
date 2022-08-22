local M = {}

function M.join(...)
    return table.concat({...}, '/')
end

M.home = vim.env.HOME

M.share = vim.fn.stdpath('data')

M.config = vim.fn.stdpath("config")

M.plugin_path = M.join(M.share, 'site/pack/packer/start/packer.nvim')

M.compile_path = M.join(M.share, 'site/pack/loader/start/packer.nvim/lua/packer_compiled.lua')


return M