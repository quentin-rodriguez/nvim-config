---@type vim.lsp.Config
return {
  cmd = { "rust_analyzer" },
  filetypes = { "rust" },
  root_makers = { "Cargo.toml" },
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        command = "clippy",
      },
    },
  },
}
