local paths = require('core.paths')
local fn = vim.fn

local M = {}

M.options = {
    auto_clean = true,
    compile_on_sync = true,
    git = { clone_timeout = 6000 },
    display = {
        open_fn = function()
            return require("packer.util").float { border = "single" }
        end,
    },
}


-- Check plugin status for installation
function M.has_plugin(name)
    if fn.empty(fn.glob(paths.join(paths.plugin_path, name))) > 0 then
        return false
    end

    return true
end

function M.run(plugins)
    local present, packer = pcall(require, "packer")

    if not present then
        return
    end

    packer.init(M.options)
    
    packer.startup(function(use)
        for _, plugin in pairs(plugins) do
            use(plugin)
        end
    end)
end

return M