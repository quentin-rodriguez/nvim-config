return {
  {
    "neovim/nvim-lspconfig",
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "mason-org/mason-lspconfig.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local mason_lspconfig = require("mason-lspconfig")

      local success, cmp_lsp = pcall(require, "cmp_nvim_lsp")
      local capabilities = vim.lsp.protocol.make_client_capabilities()

      if success then
        capabilities = cmp_lsp.default_capabilities()
      end

      local on_attach = function(_, bufnr)
        local opts = { buffer = bufnr, silent = true}



      end

      mason_lspconfig.setup({
        ensure_installed = { 'lua_ls' },

        handlers = {
          function(server_name)
            lspconfig[server_name].setup({
              on_attach = on_attach,
              capabilities = capabilities
            })
          end,

          lua_ls = function()
            lspconfig.lua_ls.setup({
              on_attach = on_attach,
              capabilities = capabilities
            })
          end,
        }
      })
    end,
  },
}
