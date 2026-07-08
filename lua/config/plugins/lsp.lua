---@diagnostic disable: missing-fields, assign-type-mismatch
return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    cmd = "ConformInfo",
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({ lsp_format = "fallback", async = true })
        end,
        desc = "Formatted files",
      },
    },
    ---@module "conform"
    ---@type conform.setupOpts
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        zig = { "zigfmt" },
        rust = { "rustfmt" },
        elixir = { "mix" },
        erlang = { "erlfmt" },
        php = { "php_cs_fixer" },
      },
      format_on_save = {
        timeout_ms = 200,
        lsp_format = "fallback",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    cmd = {
      "TSBufDisable",
      "TSBufEnable",
      "TSBufToggle",
      "TSDisable",
      "TSEnable",
      "TSToggle",
      "TSInstall",
      "TSInstallInfo",
      "TSInstallSync",
      "TSModuleInfo",
      "TSUninstall",
      "TSUpdate",
      "TSUpdateSync",
    },
    ---@module "nvim-treesitter"
    ---@type TSConfig
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      folds = { enable = true },
      ensure_installed = {
        "lua",
        "luadoc",
        "luap",
        "zig",
        "rust",
        "elixir",
        "eex",
        "heex",
        "erlang",
        "php",
        "phpdoc",
      },
    },
  },
  {
    "saghen/blink.cmp",
    cmd = "BlinkCmp",
    dependencies = "saghen/blink.lib",
    build = function()
      require("blink.cmp").build():pwait()
    end,
    init = function()
      require("config.lsp").init()
    end,
    ---@module "blink.cmp"
    ---@type blink.cmp.Config
    opts = {
      fuzzy = {
        implementation = "prefer_rust_with_warning",
        sorts = {
          "exact",
          "score",
          "sort_text",
        },
      },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 100,
        },
        ghost_text = {
          enabled = true,
          show_with_menu = true,
        },
      },
      sources = {
        default = {
          "lsp",
          "snippets",
        },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            score_offset = 100,
          },
        },
      },
    },
  },
}
