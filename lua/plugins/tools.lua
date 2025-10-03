return {
  {
    'dstein64/vim-startuptime',
    cmd = 'StartupTime',
    init = function()
      vim.g.startuptime_tries = 5
      vim.g.startuptime_event_width = 50
    end,
  },
  {
    'ahmedkhalf/project.nvim',
    config = function()
      require('project_nvim').setup({
        manual_mode = false,
        show_hidden = true,
        silent_chdir = true,
        patterns = {
          '.svn',
          '.git',
          '.tool-versions',
          'Makefile',
          '.mise.toml',
        },
      })
    end,
  },
}
