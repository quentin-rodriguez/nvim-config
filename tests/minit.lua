#!/usr/bin/env -S nvim -l

local fn = vim.fn
local env = vim.env

env.LAZY_STDPATH = ".tests"
env.LAZY_PATH = fn.stdpath("data") .. "/lazy/lazy.test"

if fn.isdirectory(env.LAZY_PATH) == 1 then
  loadfile(env.LAZY_PATH .. "/bootstrap.lua")()
else
  load(fn.system("curl -s https://raw.githubusercontent.com/folke/lazy.nvim/main/bootstrap.lua"), "bootstrap.lua")()
end

require("lazy.minit").busted({
  spec = {
    { "nvim-lua/plenary.nvim", lazy = false },
  },
})
