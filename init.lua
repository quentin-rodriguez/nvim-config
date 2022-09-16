local paths = require('core.paths')

local fn = vim.fn

if fn.empty(fn.glob(paths.plugins)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', paths.plugins })
    vim.cmd [[packadd packer.nvim]]

    require('plugins')
end
