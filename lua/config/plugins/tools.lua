--- @diagnostic disable: missing-fields, assign-type-mismatch
return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-neotest/neotest-plenary",
      "jfpedroza/neotest-elixir",
    },
    keys = {
      {
        "<leader>tr",
        function()
          require("neotest").run.run()
        end,
        desc = "Run nearest test",
      },
      {
        "<leader>tf",
        function()
          require("neotest").run.run(vim.fn.expand("%"))
        end,
        desc = "Run files test",
      },
      {
        "<leader>ts",
        function()
          require("neotest").summary.toggle()
        end,
        desc = "Toggle test summary",
      },
      {
        "<leader>to",
        function()
          require("neotest").output.open({ enter = true })
        end,
        desc = "Open test output",
      },
      {
        "<leader>tO",
        function()
          require("neotest").output_panel.toggle()
        end,
        desc = "Toggle output panel",
      },
    },
    opts = function()
      --- @module "neotest"
      --- @type neotest.Config
      return {
        discovery = { enabled = true },
        quickfix = { enabled = false },
        output = {
          enabled = true,
          open_on_run = true,
        },
      }
    end,
  },
}
