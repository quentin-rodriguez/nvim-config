--- Module containing all constants for Neovim configuration
--- @module config.utils.constants

local fs = require("config.utils.fs")

--- @class constants
--- @field LAZY_PATH string The path to lazy.nvim
--- @field LSP_PATH string The path to lsp settings
local constants = {
  LAZY_PATH = fs.join(fs.data_path, "lazy", "lazy.nvim"),
  LSP_PATH = fs.join(fs.config_path, "lua", "config", "lsp"),
}

return setmetatable({}, {
  __index = constants,
  __metatable = false,
  __newindex = function()
    error("Unable to modify a constant!")
  end,
})
