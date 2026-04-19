---@diagnostic disable: missing-fields, assign-type-mismatch
return {
  {
    "stevearc/oil.nvim",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      default_file_explorer = true,
      delete_to_trash = true,
      use_default_keymaps = false,
      columns = { "icon", "size", "mtime" },
      float = { padding = 2, border = "rounded" },
      view_options = { show_hidden = true },
      keymaps = {
        ["<CR>"] = "actions.select",
        ["<C-p>"] = "actions.preview",
        ["<C-c>"] = "actions.close",
        ["-"] = "actions.parent",
        ["g."] = "actions.toggle_hidden",
        ["gx"] = "actions.open_external",
        ["<C-s>"] = { "actions.select", opts = { vertical = true } },
      },
    },
    config = function(_, opts)
      local oil = require("oil")

      oil.setup(opts)
      vim.keymap.set("n", "e", function()
        oil.toggle_float()
      end, { desc = "Oil" })
    end,
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
      --local actions = require("telescope.actions")

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
