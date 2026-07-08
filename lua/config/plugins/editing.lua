return {
  {
    "nvim-mini/mini.surround",
    event = "VeryLazy",
    ---@module "mini.surround"
    ---@type table
    opts = {
      respect_selection_type = true,
      search_method = "cover_or_next",
      n_lines = 50,
      silent = true,
    },
  },
  {
    "folke/ts-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    ---@module "ts-comments"
    ---@type TSCommentsOptions
    opts = {},
  },
}
