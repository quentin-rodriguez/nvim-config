local fs = {}

local fn = vim.fn
local json = vim.json
local uv = vim.uv or vim.loop

function fs.join(...)
  return vim.fs.normalize(table.concat({...}, "/"))
end

function fs.glob(expr)
  return vim.split(fn.glob(expr), "\n", { trimempty = true })
end

function fs.is_file(path)
  local stat = uv.fs_stat(path)
  return stat and stat.type == "file"
end

function fs.is_directory(path)
  local stat = uv.fs_stat(path)
  return stat and stat.type == "directory"
end

function fs.mkdir(path)
  if not fs.is_directory(path) then
    fn.mkdir(path, "p")
  end
end

function fs.read(path)
  return fn.readblob(path)
end

function fs.write(path, content)
  fn.writefile({ content }, path, "b")
end

function fs.read_json(path)
  if not fs.is_file(path) then
    return {}
  end

  local content = fs.read(path)
  return json.decode(content)
end

function fs.write_json(path, object)
  local content = json.encode(object)
  fs.write(path, content)
end

return fs

