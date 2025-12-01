local fs = require("config.utils.fs")
local const = require("config.utils.constants")

if not fs.is_directory(const.LAZY_DIR) then
  local out = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    const.LAZY_REPO,
    const.LAZY_DIR,
  })

  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim repo:\n", "ErrorMsg" },
      { out, "WarningMsg" },
    }, true, {})
  end
end

vim.opt.rtp:prepend(const.LAZY_DIR)

require("lazy").setup("config.plugins", {
  lockfile = const.LAZY_LOCKFILE,
  state = const.LAZY_STATE,
  change_detection = {
    enable = false,
    notify = false,
  },
})
