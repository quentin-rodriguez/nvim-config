return {
  cmd = { "intelephense", "--stdio" },
  filetypes = { "php" },
  root_markers = {
    "composer.json",
    ".git",
  },
  settings = {
    intelephense = {
      files = {
        maxSize = 5000000,
      },
      diagnostics = {
        undefinedTypes = true,
      },
      environment = {
        includePaths = {
          "vendor",
        },
      },
    },
  },
}
