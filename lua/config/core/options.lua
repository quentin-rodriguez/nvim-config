local g = vim.g
local o = vim.o
local opt = vim.opt

vim.uv = vim.uv or vim.loop

g.mapleader = " "

g.startuptime_tries = 5
g.startuptime_event_width = 50

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

opt.termguicolors = true
opt.cursorline = true
opt.number = true
opt.relativenumber = false
opt.completeopt = "menuone,noselect,noinsert,preview"

opt.wrap = true
opt.list = true
opt.ruler = true
opt.undofile = true
opt.swapfile = false
opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = 4
opt.tabstop = 4

opt.mouse = "a"

opt.showtabline = 0
opt.updatetime = 100

o.formatexpr = "v:lua.require'conform'.formatexpr()"

opt.sessionoptions = {
  "buffers",
  "curdir",
  "tabpages",
  "winsize",
  "globals",
  "skiprtp",
  "folds",
  "help",
  "terminal",
}

vim.diagnostic.config({
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "if_many",
  },
  virtual_text = {
    prefix = "●",
    spacing = 2,
  },
})
