return {
   "nvim-neo-tree/neo-tree.nvim",
   dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim"
   },
   config = function()
      local icons = require("filivim.utils.icons")

      require("neo-tree").setup({
         enable_normal_mode_for_inputs = false,
         popup_border_style = "rounded",
         window = {
            position = "left",
            width = math.floor(vim.fn.winwidth(0) * 0.15)
         },
         icon = {
            folder_empty = "f413",
            folder_closed = "f4d3",
            folder_open = "f4d4"
         },
         git_status = {
            symbols = {
               added = icons.git.added,
               modified = icons.git.modified,
               deleted = icons.git.deleted,

               untracked = "",
               ignored   = "",
               unstaged  = "󰄱",
               staged    = "",
               conflict  = "",
            }
         },
         filesystem = {
            filtered_items = {
               visible = true,
               hide_dotfiles = true,
               hide_gitignored = false,
               hide_hidden = false
            }
         }
      })
   end
}
