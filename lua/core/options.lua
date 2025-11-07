local g = vim.g
local opt = vim.opt

vim.uv = vim.uv or vim.loop

opt.termguicolors = true
opt.cursorline = true
opt.number = true
opt.relativenumber = true
opt.completeopt = 'menuone,noselect,noinsert,preview'

opt.expandtab = true
opt.smartindent = true
opt.shiftwidth = 4
opt.tabstop = 4

opt.mouse = 'a'

opt.showtabline = 2
opt.updatetime = 200

opt.sessionoptions = {
  "buffers",
  "curdir",
  "tabpages",
  "winsize",
  "globals",
  "skiprtp",
  "folds",
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
  }
})

