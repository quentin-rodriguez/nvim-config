return function(capabilities)
  return {
    capabilities = capabilities,
    settings = {
      elp = {
        diagnostics = {
          disabled = {
            "W0030",
            "W0031",
            "W0032",
          },
        },
      },
    },
  }
end
