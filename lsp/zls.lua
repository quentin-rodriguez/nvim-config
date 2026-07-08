---@type vim.lsp.Config
return {
  cmd = { "zls" },
  filetypes = { "zig", "zir" },
  root_markers = { "zls.json", "build.zig", ".git" },
  workspace_required = false,
  settings = {
    zls = {
      enable_snippets = true,
      enable_autoprefix = true,
      warn_style = true,
    },
  },
}
