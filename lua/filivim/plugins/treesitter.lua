return {
   "nvim-treesitter/nvim-treesitter",
   event = "VeryLazy",
   build = ":TSUpdate",
   config = function()
      require("nvim-treesitter.configs").setup({
         highlight = { enable = true },
         indent = { enable = true },
         ensure_installed = {
            "lua",
            "luadoc",
            "luap"
         }
      })
   end
}
