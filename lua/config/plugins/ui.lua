return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    event = "VeryLazy",
    opts = {
      options = {
        mode = "buffers",
        themable = true,
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = true,
        show_close_icon = false,
        separator_style = "slant",
        get_element_icon = function(element)
          local icon, hl, _ = require("mini.icons").get("filetype", element.filetype)
          return icon, hl
        end,
        offsets = {
          {
            filetype = "fyler",
            text = "File Explorer",
            text_align = "center",
            highlight = "Directory",
            separator = true,
          },
        },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "BufEnter",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        icons_enabled = true,
        theme = "kanagawa",
        globalstatus = true,
      },
    },
  },
  {
    "goolord/alpha-nvim",
    dependencies = "nvim-mini/mini.icons",
    opts = function()
      return require("alpha.themes.dashboard").config
    end,
  },
  {
    "nvim-mini/mini.notify",
    version = "*",
    opts = {
      lsp_progress = {
        enable = true,
        level = "INFO",
      },
      window = {
        max_width_share = 0.5,
        winblend = 35,
      },
    },
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    cmd = "KanagawaCompile",
    opts = {},
  },
}
