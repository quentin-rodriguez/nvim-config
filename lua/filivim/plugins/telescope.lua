return {
   "nvim-telescope/telescope.nvim",
   dependencies = {
      "nvim-lua/plenary.nvim",
      {"nvim-telescope/telescope-fzf-native.nvim", build = "make"}
   },
   config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
         defaults = {
            path_display = { "smart" },
            vimgrep_arguments = {
               "rg",
               "--color=never",
               "--no-heading",
               "--with-filename",
               "--line-number",
               "--column",
               "--smart-case",
               "--hidden",
               "--glob=!.git/"
            }
         },
         extensions = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
         }
      })

      telescope.load_extension("fzf")

   end
}
