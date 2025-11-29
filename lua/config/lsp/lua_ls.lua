return function(config, lsp)
  config.lua_ls.setup({
    on_attach = lsp.on_attach,
    capabilities = lsp.capabilities(),
    flags = {
      debounce_text_changes = 100,
    },
    settings = {
      Lua = {
        hint = { enable = true },
        completion = { callSnippet = "Replace" },
        diagnostics = {
          globals = {
            "vim",
          },
        },
        workspace = {
          checkThirdParty = false,
          library = {
            vim.fn.expand("$VIMRUNTIME/lua"),
            vim.fn.stdpath("config") .. "/lua",
          },
        },
      },
    },
  })
end
