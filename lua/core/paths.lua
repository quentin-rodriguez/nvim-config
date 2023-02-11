local fn = vim.fn
local M = {}

M.plugins        = utils.join(fn.stdpath("data"), "lazy")
M.plugin_manager = utils.join(M.plugins, "lazy.nvim")
M.lockfile       = utils.join(fn.stdpath("config"), "lazy-lock.json")
M.cache          = utils.join(fn.stdpath("state"), "lazy", "cache")

return M