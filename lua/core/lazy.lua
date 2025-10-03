local fn = vim.fn
local lazy_repo = "https://github.com/folke/lazy.nvim.git"
local lazy_path = fn.stdpath("data") .. "/lazy/lazy.nvim"

local logger = require("utils.logger")

if not (vim.uv or vim.loop).fs_stat(lazy_path) then
  local out = fn.system({ "git", "clone", "--filter=blob:none", lazy_repo, lazy_path })

  if vim.v.shell_error ~= 0 then
    logger.fatal("Failed to clone lazy.nvim repo: " .. out)
  end
end

vim.opt.rtp:prepend(lazy_path)

require("lazy").setup("plugins", {})
