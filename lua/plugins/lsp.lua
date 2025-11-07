return {
  {
    "neovim/nvim-lspconfig",
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "mason-org/mason-lspconfig.nvim",
    },
    config = function()
      local fs = require("utils.fs")
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



      for _, v in ipairs(vim.fn.glob("~/.config/nvim/lua/langs/*.lua", true, true)) do
        Snacks.notify.warn(vim.fs.basename(v))
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
