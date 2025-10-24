return {
  {
    "nvim-lualine/lualine.nvim",
    event = "BufEnter",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require('lualine').setup({
        options = {
          icons_enabled = true,
          theme = 'catppuccin',
          globalstatus = true,
        },
      })
    end
  },
  {
    "karb94/neoscroll.nvim",
    opts = {
      hide_cursor = false,
      stop_eof = true
    }
  },
  {
    "nanozuki/tabby.nvim",
    event = "VimEnter",
    dependencies = "nvim-tree/nvim-web-devicons"
  },
  {
    "rcarriga/nvim-notify",
    init = function() require("utils.logger").setup() end,
    opts = {
      fps = 30,
      timeout = 2500,
      render = "minimal",
      stages = "slide"
    }
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    opts = {
      flavour = 'mocha',
      transparent_background = true,
      term_colors = false,
    }
  }
}
