_G.paths = {}
local fn = vim.fn

paths.plugins        = utils.join(fn.stdpath("data"), "lazy")
paths.plugin_manager = utils.join(paths.plugins, "lazy.nvim")
paths.lockfile       = utils.join(fn.stdpath("config"), "lazy-lock.json")
paths.cache          = utils.join(fn.stdpath("state"), "lazy", "cache")

return paths