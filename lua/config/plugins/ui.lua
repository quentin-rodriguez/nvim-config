---@diagnostic disable: missing-fields, assign-type-mismatch
return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<C-n>", "<cmd>BufferLineCycleNext<CR>", { desc = "Buffer Next" } },
      { "<C-p>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Buffer Previous" } },
      { "<C-1>", "<cmd>BufferLineGoToBuffer 1<CR>", { desc = "Go to buffer 1" } },
      { "<C-2>", "<cmd>BufferLineGoToBuffer 2<CR>", { desc = "Go to buffer 2" } },
      { "<C-3>", "<cmd>BufferLineGoToBuffer 3<CR>", { desc = "Go to buffer 3" } },
      { "<C-4>", "<cmd>BufferLineGoToBuffer 4<CR>", { desc = "Go to buffer 4" } },
      { "<C-5>", "<cmd>BufferLineGoToBuffer 5<CR>", { desc = "Go to buffer 5" } },
      { "<C-6>", "<cmd>BufferLineGoToBuffer 6<CR>", { desc = "Go to buffer 6" } },
      { "<C-7>", "<cmd>BufferLineGoToBuffer 7<CR>", { desc = "Go to buffer 7" } },
      { "<C-8>", "<cmd>BufferLineGoToBuffer 8<CR>", { desc = "Go to buffer 8" } },
      { "<C-9>", "<cmd>BufferLineGoToBuffer 9<CR>", { desc = "Go to buffer 9" } },
    },
    ---@module "bufferline"
    ---@type bufferline.UserConfig
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
    ---@module "lualine"
    ---@type table
    opts = {
      options = {
        icons_enabled = true,
        theme = "duskfox",
        globalstatus = true,
      },
    },
  },
  {
    "goolord/alpha-nvim",
    opts = function()
      ---@module "alpha"
      ---@type table
      return require("alpha.themes.dashboard").config
    end,
  },
  {
    "nvim-mini/mini.notify",
    ---@module "mini.notify"
    ---@type table
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
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd.colorscheme("duskfox")
    end,
  },
}
