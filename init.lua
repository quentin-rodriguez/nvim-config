require("config.core.options")
require("config.core.autocmds")
require("config.core.keymaps")

_G.config = {
  lsp = require("config.lsp"),
  testing = require("config.testing"),
}

require("config.core.lazy")
