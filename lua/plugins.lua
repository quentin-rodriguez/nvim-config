local fn = vim.fn

local plugins = {
    { import = "lsp" },
    { import = "gui" },
}


local opts = {
    root = paths.plugins,
    defaults = {
        lazy = false,
        version = "*",
    },
    lockfile = paths.lockfile,
    git = {
        log = { "--since=3 days ago" },
        timeout = 300,
        url_format = "https://github.com/%s.git",
        filter = true
    },
    install = {
        missing = true,
        colorscheme = { "nightly" },
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
   fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        paths.plugin_manager
   }
end

vim.opt.rtp:prepend(paths.plugin_manager)

local present, lazy = pcall(require, "lazy")
if not present then
    return
end

lazy.setup(plugins, opts)