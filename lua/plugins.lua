local paths = require "core.paths"
local fn    = vim.fn

local plugins = {
    { import = "lsp" }
}


local opts = {
    root = paths.plugins,
    lockfile = paths.lockfile,
    git = {
        log = { "--since=3 days ago" },
        timeout = 300,
        url_format = "https://github.com/%s.git",
        filter = true
    },
    checker = {
        enabled = false,
        concurrency = nil,
        notify = true,
        frequency = 3600
    },
    ui = {
        size = {
            width = 0.8,
            height = 0.7
        },
        border = "rounded",
        throttle = 20,
        diff = {
            cmd = "git"
        }
    },
    performance = {
        reset_packpath = true,
        rtp = {
            reset = true,
            disable_events = {
                "2html_plugin",
                "getscript",
                "getscriptPlugin",
                "gzip",
                "logipat",
                "netrw",
                "netrwPlugin",
                "netrwSettings",
                "netrwFileHandlers",
                "matchit",
                "tar",
                "tarPlugin",
                "rrhelper",
                "spellfile_plugin",
                "vimball",
                "vimballPlugin",
                "zip",
                "zipPlugin",
                "tutor",
                "rplugin",
                "syntax",
                "synmenu",
                "optwin",
                "compiler",
                "bugreport",
                "ftplugin",
            }
        },
        cache = {
            enabled = true,
            path = paths.cache,
            ttl = 3600 * 24 * 2,
            disable_events = {
                "UIEnter",
                "VimEnter",
                "BufReadPre"
            }
        }
    }
}

if fn.isdirectory(paths.plugin_manager) == 0 then
   vim.notify(
        "Installing lazy.nvim...",
        vim.log.levels.INFO
    )
   
   fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        paths.plugin_manager
   }
end

vim.opt.runtimepath:prepend(paths.plugin_manager)

local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
    return
end

lazy.setup(plugins, opts)