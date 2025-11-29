--- Module containing all constants for Neovim configuration
--- @module config.utils.constants

local fs = require("config.utils.fs")

--- @class constants
--- @field LAZY_REPO string The lazy repository url
--- @field LAZY_DIR string The path to lazy directory
--- @field LAZY_LOCKFILE string The path of lazy lockfile
--- @field LAZY_STATE string The path of the state of lazy plugins
--- @field LSP_PATH string The path to lsp settings
local constants = {
  LAZY_REPO = "https://github.com/folke/lazy.nvim.git",
  LAZY_DIR = fs.join(fs.data_path, "lazy", "lazy.nvim"),
  LAZY_LOCKFILE = fs.join(fs.config_path, "lazy-lock.json"),
  LAZY_STATE = fs.join(fs.state_path, "lazy", "state.json"),
  LSP_PATH = fs.join(fs.config_path, "lua", "config", "lsp"),
}

return setmetatable({}, {
  __index = constants,
  __metatable = false,
  __newindex = function()
    error("Unable to modify a constant!")
  end,
})
