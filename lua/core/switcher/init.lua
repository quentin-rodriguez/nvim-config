local config = require("core.switcher.config")

config.bootstrap()
config.load()

vim.api.nvim_create_user_command("Switch", function ()

end, {
    desc = "Switch profile",
    nargs = 1,
    complete = config.list
})
