return {
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      library = {
        { path = "snacks.nvim" },
        { path = "${3rd}/luv/library", words = { "vim%.uv" } }
      }
    }
  },
  {
    "saghen/blink.cmp",
    dependencies = "rafamadriz/friendly-snippets",
    versiom = "1.*",
    opts = {
      fuzzy = {
        implementation = "lua",
        sorts = {
          "exact",
          "score",
          "sort_text"
        }
      },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
        },
        ghost_text = {
          enabled = true,
          show_with_menu = true,
        }
      },
      sources = {
        default = {
          "lazydev",
          "lsp",
          "path",
          "snippets"
        },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            score_offset = 100,
          }
        }
      }
    }
  }
}
