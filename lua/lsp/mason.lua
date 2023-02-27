return {
    "williamboman/mason.nvim",
    dependencies = "williamboman/mason-lspconfig.nvim",
    priority = 20,
    cmd = {
        "Mason",
        "MasonInstall",
        "MasonUninstall",
        "MasonUninstallAll",
        "MasonLog",
    },
    config = function()
        local mason = require "mason"
        -- local lspmason = require "mason-lspconfig"
        -- local lspconfig = require "lspconfig"

        local servers = {
            -- "luau-lsp"
        }
        
        mason.setup {
            ui = {
                check_outdated_packages_on_open = false,
                border = "single",
                icons = {
                    package_installed = icons.package_installed,
                    package_uninstalled = icons.package_uninstalled
                }
            }
        }

        -- lspmason.setup {
        --     ensure_installed = servers 
        -- }

        

    end
}