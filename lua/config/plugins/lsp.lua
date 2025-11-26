return {
  {
    "neovim/nvim-lspconfig",
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "mason-org/mason-lspconfig.nvim",
    },
    config = function()
      local lsp = require("config.utils.lsp")
      local config = require("lspconfig")


      require("mason-lspconfig").setup({
        ensure_installed = lsp.servers(),

        handlers = {
          function(server_name)
            require("config.lsp." .. server_name)(config, lsp)
          end,
        }
      })
    end,
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
