return {
  {
    "dstein64/vim-startuptime",
    cmd = "StartupTime",
  },
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },
  {
    "MunifTanjim/nui.nvim",
    lazy = true,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Show keymaps guide",
      },
      {
        "<leader><c-w>",
        function()
          require("which-key").show({ keys = "<c-w>", loop = true })
        end,
        desc = "Show keymaps Hydra mode",
      },
    },
    opts = {
      preset = "helix",
      win = {
        border = "rounded",
      },
    },
  },
}
