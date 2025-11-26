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
        desc = "Formatted all files",
      },
    },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
      },
      format_on_save = {
        timeout_ms = 200,
        lsp_format = "fallback",
      },
    },
  },
}
