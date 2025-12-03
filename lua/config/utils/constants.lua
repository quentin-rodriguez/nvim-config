--- Module containing all constants for Neovim configuration

local fn = vim.fn
local config_path = fn.stdpath("config")
local state_path = fn.stdpath("state")
local data_path = fn.stdpath("data")

local fs = require("config.utils.fs")

--- @class constants
--- @field LAZY_REPO string The lazy repository url
--- @field LAZY_DIR string The path to lazy directory
--- @field LAZY_LOCKFILE string The path of lazy lockfile
--- @field LAZY_STATE string The path of the state of lazy plugins
--- @field LSP_SERVERS string The path to lsp servers
local constants = {
  LAZY_REPO = "https://github.com/folke/lazy.nvim.git",
  LAZY_DIR = fs.join(data_path, "lazy", "lazy.nvim"),
  LAZY_LOCKFILE = fs.join(config_path, "lazy-lock.json"),
  LAZY_STATE = fs.join(state_path, "lazy", "state.json"),
  LSP_SERVERS = fs.join(config_path, "lua", "config", "lsp", "servers"),
}

return setmetatable({}, {
  __index = constants,
  __metatable = false,
  __newindex = function()
    error("Unable to modify a constant!")
  end,
})
