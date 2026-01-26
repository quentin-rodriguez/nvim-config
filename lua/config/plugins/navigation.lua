---@diagnostic disable: missing-fields, assign-type-mismatch
return {
  {
    "A7Lavinraj/fyler.nvim",
    branch = "stable",
    cmd = "Fyler",
    keys = {
      {
        "<C-e>",
        function()
          require("fyler").toggle()
        end,
        mode = { "n", "i" },
        desc = "Toggle file explorer",
      },
    },
    ---@module "fyler"
    ---@type FylerConfig
    opts = {
      views = {
        finder = {
          follow_current_file = true,
          close_on_select = false,
          default_explorer = true,
          delete_to_trash = true,
          win = {
            kind = "split_left",
            kinds = {
              split_left = {
                width = "12%",
              },
            },
          },
        },
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-ui-select.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    cmd = "Telescope",
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        defaults = {
          path_display = { "smart" },
          sorting_strategy = "ascending",
          file_ignore_patterns = {
            ".git",
            "node_modules",
          },
          vimgrep_arguments = {
            "rg",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
            "--hidden",
          },
        },
        extensions = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      })

      telescope.load_extension("fzf")
      telescope.load_extension("ui-select")
    end,
  },
}
