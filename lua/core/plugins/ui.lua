return {
  {
    "nanozuki/tabby.nvim",
    event = "VimEnter",
    dependencies = "nvim-tree/nvim-web-devicons"
  },
  {
    'rcarriga/nvim-notify',
    init = function()
      vim.notify = require('notify')
    end,
    opts = {
      fps = 30,
      timeout = 2500,
      render = "minimal",
      stages = "slide"
    }
  }
}













-- return {
--   'romgrk/barbar.nvim',
--   dependencies = {
--     'lewis6991/gitsigns.nvim',
--     'nvim-tree/nvim-web-devicons',
--   },
--   init = function()
--     vim.g.barbar_auto_setup = false
--   end,
--   opts = {
--     sidebar_filetypes = {
--       ['neo-tree'] = {
--         event = 'BufWipeout',
--         text = 'File Explorer',
--         align = 'center',
--       },
--     },
--   },
-- }
