local paths = require('core.paths')
local fn = vim.fn

local M = {}

M.options = {
    auto_clean = false,
    compile_on_sync = true,
    compile_path = paths.compile,
    git = { clone_timeout = 6000 },
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

function M.run(plugins)
    local present, packer = pcall(require, 'packer')

    if not present then
        return
    end

    packer.init(M.options)
    
    packer.startup(function(use)
        for _, plugin in pairs(plugins) do
            use(plugin)
        end
    end)

    packer.sync()
end

return M