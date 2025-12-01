return function(capabilities)
  return {
    capabilities = capabilities,
    settings = {
      Lua = {
        hint = { enable = true },
        completion = { callSnippet = "Replace" },
        diagnostics = {
          globals = {
            "vim",
          },
        },
        workspace = {
          checkThirdParty = false,
          library = {
            vim.fn.expand("$VIMRUNTIME/lua"),
            vim.fn.stdpath("config") .. "/lua",
          },
        },
      },
    },
  }
end
