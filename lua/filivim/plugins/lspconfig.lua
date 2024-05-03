return {
   "neovim/nvim-lspconfig",
   event = { "BufReadPre", "BufNewFile" },
   dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      { "ray-x/lsp_signature.nvim", event = "VeryLazy" },
      { "antosha417/nvim-lsp-file-operations", config = true }
   },
   config = function()
      local lspconfig = require("lspconfig")
      local mason_lspconfig = require("mason-lspconfig")
      local cmp_lsp = require("cmp_nvim_lsp")

      for _, server in pairs(mason_lspconfig.get_installed_servers()) do
         lspconfig[server].setup({
            on_attach = function(client, bufnr)
               require("lsp_signature").on_attach({
                  hint_prefix = ""
               }, bufnr)
            end,

            capabalities = cmp_lsp.default_capabilities(
               vim.lsp.protocol.make_client_capabilities()
            )
         })
      end

   end
}
