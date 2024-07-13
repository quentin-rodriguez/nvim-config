return {
   {
      "rcarriga/nvim-notify",
      init = function()
         vim.notify = require("notify")
      end,
      opts = {
         fps = 60,
         timeout = 800
      }
   }
}
