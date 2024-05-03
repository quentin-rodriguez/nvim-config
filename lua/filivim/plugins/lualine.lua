return {
   "nvim-lualine/lualine.nvim",
   event = { "BufEnter" },
   dependencies = { "nvim-tree/nvim-web-devicons" },
   config = function()
      require("lualine").setup({
         options = {
            icons_enabled = true,
            theme = "material",
            globalstatus = true,
            disabled_filetypes = {
               statusline = {
                  "neo-tree"
               }
            }
         }
      })
   end
}
