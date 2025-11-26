--- @param config lspconfig.
return function(config, lsp)
  config.expert.setup({
    capabilities = lsp.capabilities(),
    on_attach = lsp.on_attach,
  })
end
