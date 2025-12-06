return {
  {
    "nvim-mini/mini.pairs",
    event = "VeryLazy",
    ---@module "mini.pairs"
    ---@type table
    opts = {
      modes = {
        insert = true,
        terminal = true,
        command = false,
      },
    },
  },
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
  {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    cmd = {
      "TodoFzfLua",
      "TodoLocList",
      "TodoQuickFix",
      "TodoTrouble",
      "TodoTelescope",
    },
    keys = {
      { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
      { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "TODO/FIX/FIXME" },
    },
    opts = {},
  },
  {
    "folke/lazydev.nvim",
    ft = "lua",
    cmd = "LazyDev",
    ---@module "lazydev"
    ---@type lazydev.Config
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
}
