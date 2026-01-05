return function(capabilities)
  return {
    capabilities = capabilities,
    settings = {
      denols = {
        lint = true,
        unstable = true,
        compilerOptions = {
          lib = {
            "dom",
            "esnext",
          },
        },
        suggest = {
          imports = true,
        },
        inlayHints = {
          parameterNames = "all",
          variableTypes = true,
          functionLikeReturnTypes = true,
          propertyDeclarationTypes = true,
        },
      },
    },
  }
end
