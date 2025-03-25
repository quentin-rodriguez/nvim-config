local M = {}

local config = require('core.switcher.config')

function M.autocomplete(part)
  return vim
    .iter(config.list())
    :filter(function(conf)
      return conf:match('^' .. part)
    end)
    :totable()
end

function M.execute(args)
  local profile = args.fargs[1]

  config.save(profile)
  config.reload()
  vim.notify('Reload profile: ' .. profile)
end

return M
