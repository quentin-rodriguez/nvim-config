local M = {}
local fn = vim.fn
local uv = vim.uv or vim.loop

function M.join(...)
  return vim.fs.normalize(table.concat({ ... }, '/'))
end

function M.glob(expr, mods)
  local files = fn.glob(expr, false, true)

  return vim.tbl_map(function(file)
    return fn.fnamemodify(file, mods)
  end, files)
end

function M.is_file(path)
  local stat = uv.fs_stat(path)
  return stat and stat.type == 'file'
end

function M.is_directory(path)
  local stat = uv.fs_stat(path)
  return stat and stat.type == 'directory'
end

function M.mkdir(path)
  if not M.is_directory(path) then
    fn.mkdir(path, 'p')
  end
end

function M.read(path)
  return fn.readblob(path)
end

function M.write(path, content)
  fn.writefile({ content }, path, 'b')
end

return M
