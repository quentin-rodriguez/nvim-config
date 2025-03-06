require("core.switcher.lazy")("elixir")

local cmd = require("core.switcher.cmd")

vim.api.nvim_create_user_command("Switch", cmd.execute, {
    desc = "Switch profile",
    nargs = 1,
    complete = cmd.autocomplete
})