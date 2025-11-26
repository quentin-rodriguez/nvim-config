return {
  {
    "folke/ts-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    --- @type TSCommentsOptions
    opts = {},
  },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    cmd = "LazyDev",
    --- @class plugins.LazyDevConfig: lazydev.Config
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } }
      }
    }
  },
}
