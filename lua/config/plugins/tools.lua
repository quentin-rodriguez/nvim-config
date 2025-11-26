return {

  {
    "glacambre/firenvim",
    build = ":call firenvim#install(0)"
  },
  {
    'dstein64/vim-startuptime',
    cmd = 'StartupTime',
    init = function()
      vim.g.startuptime_tries = 5
      vim.g.startuptime_event_width = 50
    end,
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {},
    keys = {
      { "<leader>qs", function() end, desc = "Restore session" },
      { "<leader>qS", function() end, desc = "Select session" },
      { "<leader>ql", function() end, desc = "Restore last session" },
      { "<leader>qd", function() end, desc = "Don't save current session" }
    }
  }
}
