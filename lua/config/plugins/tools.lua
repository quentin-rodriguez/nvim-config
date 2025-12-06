--- @diagnostic disable: missing-fields, assign-type-mismatch
return {
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    keys = {
      { "<leader>qs", function() end, desc = "Restore session" },
      { "<leader>qS", function() end, desc = "Select session" },
      { "<leader>ql", function() end, desc = "Restore last session" },
      { "<leader>qd", function() end, desc = "Don't save current session" },
    },
    --- @module "persistence"
    --- @type Persistence.Config
    opts = {},
  },
  {
    "OXY2DEV/markview.nvim",
    ft = "markdown",
    cmd = "Markview",
    --- @module "markview"
    --- @type markview.config
    opts = {
      icon_provider = "mini",
    },
  },
  {
    "stevearc/overseer.nvim",
    cmd = {
      "OverseerOpen",
      "OverseerClose",
      "OverseerToggle",
      "OverseerSaveBundle",
      "OverseerLoadBundle",
      "OverseerDeleteBundle",
      "OverseerRunCmd",
      "OverseerRun",
      "OverseerInfo",
      "OverseerBuild",
      "OverseerQuickAction",
      "OverseerTaskAction",
      "OverseerClearCache",
    },
    --- @module "overseer"
    --- @type overseer.SetupOpts
    opts = {
      component_aliases = {
        default_neotest = {
          "on_exit_set_status",
          "on_complete_notify",
          "on_complete_dispose",
        },
      },
      strategy = {
        "toggleterm",
        direction = "float",
      },
    },
  },
  {
    "nvim-neotest/neotest",
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
        consumers = {
          overseer = require("neotest.consumers.overseer"),
        },
        overseer = {
          enabled = true,
          force_default = true,
        },
      }
    end,
  },
}
