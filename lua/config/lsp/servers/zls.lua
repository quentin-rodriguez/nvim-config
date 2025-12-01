return function(capabilities)
  return {
    capabilities = capabilities,
    settings = {
      zls = {
        enable_snippets = true,
        enable_autoprefix = true,
        warn_style = true,
      },
    },
  }
end
