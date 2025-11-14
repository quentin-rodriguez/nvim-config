return function(lspconfig, on_attach, capabilities)
  lspconfig.lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 100,
    },
    settings = {
      Lua = {
        completion = {
          callSnippet = "Replace",
        },
        diagnostics = {
          globals = {
            "vim"
          },
        },
      }
    }
  })
end
