return {
   "stevearc/dressing.nvim",
   event = "VeryLazy",
   lazy = true,
   init = function()
      local lazy = require("lazy")

      vim.ui.input = function(...)
         lazy.load({ plugins = { "dressing.nvim" }})
         vim.ui.input(...)
      end

      vim.ui.select = function(...)
         lazy.load({ plugins = { "dressing.nvim" }})
         vim.ui.select(...)
      end
   end
}
