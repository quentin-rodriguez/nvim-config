local M = {}
local log = vim.log

local tbl = require("utils.table")


local levels = {
  TRACE = log.levels.DEBUG - 1,
  DEBUG = log.levels.DEBUG,
  INFO  = log.levels.INFO,
  WARN  = log.levels.WARN,
  ERROR = log.levels.ERROR,
  FATAL = log.levels.ERROR + 1
}

local function format_msg(level, msg)
  local level_name = tbl.key_of(levels, level)
  local date = os.date("%Y-%m-%d %H:%M:%S")

  return string.format("[%s] %s: %s", date, level_name, msg)
end

local function log(level, msg)
  msg = format_msg(level, msg)

  if level == levels.FATAL then
    vim.schedule(function()
      vim.api.nvim_err_writeln(msg)
      os.exit(1)
    end)
  end

  vim.schedule(function()
    vim.notify(msg, level)
  end)
end


function M.setup(opts)
  local ok, notify = pcall(require, "notify")

  if ok then
    vim.notify = notify
    vim.notify.setup(opts or {})
  end
end

function M.trace(msg) log(levels.TRACE, msg) end
function M.debug(msg) log(levels.DEBUG, msg) end
function M.info(msg) log(levels.INFO, msg) end
function M.warning(msg) log(levels.WARN, msg) end
function M.error(msg) log(levels.ERROR, msg) end
function M.fatal(msg) log(levels.FATAL, msg) end

return M
