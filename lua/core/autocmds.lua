local create_autocmd = vim.api.nvim_create_autocmd

local function augroup(name)
  return vim.api.nvim_create_augroup(name, { clear = true })
end

vim.cmd.colorscheme('catppuccin')

create_autocmd({ 'VimResized' }, {
  group = augroup('resize'),
  callback = function()
    vim.cmd('tabdo wincmd =')
  end,
})
