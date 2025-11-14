return {
  {
    "romgrk/barbar.nvim",
    event = "VimEnter",
    dependencies = {
      "lewis6991/gitsigns.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    cmd = {
      "BarbarEnable",
      "BarbarDisable",
      "BufferNext",
      "BufferPrevious",
      "BufferGoto",
      "BufferGotoPinned",
      "BufferGotoUnpinned",
      "BufferFirst",
      "BufferLast",
      "BufferMove",
      "BufferMoveNext",
      "BufferMovePrevious",
      "BufferMoveStart",
      "BufferPickDelete",
      "BufferPin",
      "BufferOrderByBufferNumber",
      "BufferOrderByName",
      "BufferOrderByDirectory",
      "BufferOrderByLanguage",
      "BufferOrderByWindowNumber",
      "BufferClose",
      "BufferDelete",
      "BufferWipeout",
      "BufferCloseAllButCurrent",
      "BufferCloseAllButVisible",
      "BufferCloseAllButPinned",
      "BufferCloseAllButCurrentOrPinned",
      "BufferCloseBuffersLeft",
      "BufferCloseBuffersRight",
      "BufferScrollLeft",
      "BufferScrollRight",
      "BufferRestore",
    },
    opts = {
      focus_on_close = "right",
      insert_at_end = true,
      clickable = false,
      sidebar_filetypes = {
        ["carbon"] = {
          text = "Explorer",
          align = "center"
        },
      },
      icons = {
        filetype = {
          enabled = true,
          custom_colors = true,
        },
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true },
          [vim.diagnostic.severity.WARN] = { enabled  = true },
          [vim.diagnostic.severity.INFO] = { enabled = false },
          [vim.diagnostic.severity.HINT] = { enabled = false },
        },
      }
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    event = "BufEnter",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
     options = {
        icons_enabled = true,
        theme = "catppuccin",
        globalstatus = true,
      },
    }
  },
  {
    "SidOfc/carbon.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    build = ":Lexplore",
    cmd = {
      "Carbon",
      "Lcarbon",
      "Lexplore",
      "Rcarbon",
      "Rexplore",
      "ToggleSidebarCarbon",
      "Fcarbon",
    },
    opts = {
      auto_open = true,
      compress = true,
      sync_pwd = true,
      keep_netrw = false,
    },
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
}
