local git = {}
local system  = vim.fn.system
local flatten = vim.tbl_flatten

function git.clone(...)
   local command = flatten({"git", "clone", {...}})
   system(command)
end

-- function git.



return git
