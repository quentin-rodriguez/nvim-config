return {
---  {
   -- 'nvim-lualine/lualine.nvim',
    --event = 'BufEnter',
    --dependencies = 'nvim-tree/nvim-web-devicons',
    --opts = {
     -- options = {
       -- icons_enabled = true,
        --theme = 'catppuccin',
        --globalstatus = true,
      --},
    --}
  --},
  {
    'nanozuki/tabby.nvim',
    event = 'VimEnter',
    dependencies = 'nvim-tree/nvim-web-devicons',
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      term_colors = false,
    },
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      explorer = {
        enabled = true,
        replace_netrw = false,
        trash = false,
      },
      notifier = {
        enabled = true,
        timeout = 5000,
        level = vim.log.levels.INFO,
        style = "fancy",
      },
      picker = {
        sources = {
          explorer = {
            layout = {
              preset = "sidebar",
              preview = false,
            }
          }
        }
      }
    }
  }
}
