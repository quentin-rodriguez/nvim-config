local autocmd = vim.api.nvim_create_autocmd

local function augroup(name)
  return vim.api.nvim_create_augroup("core_" .. name, { clear = true })
end

autocmd("VimResized", {
  group = augroup("resize"),
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})
