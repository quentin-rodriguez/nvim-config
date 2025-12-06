local M = { dependencies = {} }

local const = require("config.utils.constants")
local fs = require("config.utils.fs")

local adapters = fs.readdir(const.NEOTEST_ADAPTERS)

function M.get_adapters() end

return M
