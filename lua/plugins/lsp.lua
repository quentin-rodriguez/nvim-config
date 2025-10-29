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

      local success, cmp = pcall(require, "blink.cmp")
      local capabilities = vim.lsp.protocol.make_client_capabilities()

      if success then
        capabilities = cmp.get_lsp_capabilities(capabilities)
      end

      local on_attach = function(_, bufnr)
        local opts = { buffer = bufnr, silent = true}



      end

      mason_lspconfig.setup({
        ensure_installed = { 'lua_ls' },

        handlers = {
          function(server_name)
            require("langs." .. server_name)(
              lspconfig,
              on_attach,
              capabilities
            )
          end,
        }
      })
    end,
  },
}
