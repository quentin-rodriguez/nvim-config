return {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = {
    "javascript",
    "javascript:react",
    "typescript",
    "typescript:react",
  },
  root_markers = {
    "tsconfig.json",
    "package.json",
    ".git",
  },
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = true,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariablesTypeHints = true,
      },
    },
  },
}
