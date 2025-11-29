local M = {}

local const = require("config.utils.constants")
local fs = require("config.utils.fs")
local health = vim.health or require("health")
local fn = vim.fn

---
local start = health.start or health.report_start
local info = health.info or health.report_info
local ok = health.ok or health.report_ok
local warn = health.warn or health.report_warn
local error = health.error or health.report_error

local function check_nvim_vsn()
  if fn.has("nvim-0.11.2") == 1 then
    ok("Using Neovim `>= 0.11.2`")
  else
    error("Neovin `>= 0.11.2` is required")
  end
end

local function check_lazy_path()
  if fs.is_directory(const.LAZY_PATH) then
    ok(("The path for lazy.nvim: `%s`"):format(const.LAZY_PATH))
  else
    error("No path to lazy.nvim was found.")
  end
end

local function check_cli_tools()
  local cmds = { "git", "rg", "curl" }

  for _, cmd in ipairs(cmds) do
    if vim.fn.executable(cmd) == 1 then
      ok(("`%s` is installed"):format(cmd))
    else
      warn(("`%s` is not installed"):format(cmd))
    end
  end
end

local function check_os()
  local uv = vim.uv or vim.loop
  local sys = uv.os_uname()

  info(("System: `%s`"):format(sys.sysname))
  info(("Release: `%s`"):format(sys.release))
  info(("Architecture: `%s`"):format(sys.machine))
  info(("Version: `%s`"):format(sys.version))
end

function M.check()
  start("General")
  check_nvim_vsn()
  check_lazy_path()

  start("CLI Tools")
  check_cli_tools()

  start("Operating System")
  check_os()
end

return M
