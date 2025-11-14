local M = {}

local config_path = vim.fn.stdpath("config")
local fs = require("utils.fs")

function M.langs(default_path)
  default_path = default_path or config_path .. "/lua/lsp"

  if not fs.is_directory(default_path) then
    return {}
  end

  return fs.glob(default_path .. "/*.lua", ":t:r")
end

return M
