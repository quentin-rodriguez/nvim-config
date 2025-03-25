local git = {}

local fn = vim.fn

local function git_cmd(command, ...)
  fn.system(vim.tbl_flatten({"git", command, {...}}))
end

function git.clone(...)
  git_cmd("clone", ...)
end


return git
