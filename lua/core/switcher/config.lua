local config = {}

local fs = require('core.utils.fs')
local git = require("core.utils.git")
local constants = require("core.switcher.constants")

function config.list()
  local configs = fs.glob(constants.configs_dir .. '/*')

  return vim.iter(configs)
    :map(function(conf) return vim.fs.basename(conf) end)
    :totable()
end

function config.bootstrap()
  if not fs.is_file(constants.current_config_file) then
    local configs = config.list()

    if not vim.tbl_isempty(configs) then
      config.save(configs[1])
    end
  end

  if not fs.is_directory(constants.lazy_dir) then
    git.clone("--filter=blob:none", constants.lazy_url, "--branch=stable", constants.lazy_dir)
  end

  vim.opt.rtp:prepend(constants.lazy_dir)
end

function config.load()
  local conf = vim.g.nvim_config or fs.read_json(constants.current_config_file)
  local status, lazy = pcall(require, "lazy")

  if status and not vim.tbl_isempty(conf) then
    lazy.setup({
      root = conf.root,
      spec = {
        { import = 'core.plugins' },
        { import = conf.plugins }
      }
    })

  end
end

function config.reload()
  if vim.g.nvim_config then
    vim.g.lazy_did_setup = false
    vim.go.loadplugins = true

    dofile(vim.env.MYVIMRC)
  end
end

function config.save(name)
  local nvim_config = {
    name = name,
    plugins = "configs." .. name .. ".plugins",
    root = fs.join(constants.config_data_dir, name),
    init = fs.join(constants.configs_dir, name, 'init.lua'),
  }

  vim.g.nvim_config = nvim_config
  fs.mkdir(constants.config_data_dir)
  fs.write_json(constants.current_config_file, nvim_config)
end

return config
