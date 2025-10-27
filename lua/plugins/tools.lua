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
}
