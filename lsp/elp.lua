return {
  cmd = { "elp", "server" },
  filetypes = { "erlang" },
  root_markers = {
    "rebar.config",
    "erlang.mk",
    ".elp.toml",
    "elp.toml",
  },
  settings = {
    elp = {
      lens = {
        enable = true,
        run = {
          enable = true,
        },
      },
      eqwalizer = {
        enableAll = true,
      },
    },
  },
}
