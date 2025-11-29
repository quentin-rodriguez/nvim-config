return function(config, lsp)
  config.zls.setup({
    capabilities = lsp.capabilities(),
    on_attach = lsp.on_attach,
    settings = {
      zls = {
        enable_snippets = true,
        enable_autoprefix = true,
        warn_style = true,
      },
    },
  })
end
