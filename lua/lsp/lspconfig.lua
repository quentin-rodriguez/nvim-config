return {
    "neovim/nvim-lspconfig",
    dependencies = "folke/neodev.nvim",
    priority = 10,
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        local config = {
            virtual_text = true,
            update_in_insert = true,
            underline = true,
            severity_sort = true,
            float = {
                focusable = false,
                style = "minimal",
                border = "rounded",
                source = "always",
                header = "",
                prefix = "",
            }
        }

        vim.diagnostic.config(config)
        vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
            vim.lsp.handlers.hover,
            { border = "rounded" }
        )
        vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
            vim.lsp.handlers.signature_help,
            { border = "rounded" }
        )
    end
}