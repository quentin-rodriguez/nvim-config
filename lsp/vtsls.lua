return {
  cmd = { "vtsls", "--stdio" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
  },
  root_markers = {
    "package-lock.json",
    "yarn.lock",
    "pnpm-lock.yaml",
    "bun.lockdb",
    "bun.lock",
  },
  settings = {
    typescript = {
      inlayHints = {
        parameterNames = { enabled = "all" },
        paremeterTypes = { enabled = true },
        variableTypes = { enabled = true },
        propertyDeclarationTypes = { enabled = true },
        functionLikeReturnTypes = { enabled = true },
        updateImportsOnFileMove = { enabled = "always" },
      },
      vtsls = {
        autoUseWorkspaceTsdk = true,
      },
    },
  },
}
