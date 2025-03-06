local M = {}

local fn = vim.fn
local fs = vim.fs
local profiles_dir = fn.stdpath("config") .. "/lua/profiles"

function M.autocomplete(arg)
    local profiles = vim.split(fn.glob(profiles_dir .. "/*"), "\n")

    return vim.iter(profiles)
            :map(function(profile) return fs.basename(profile) end)
            :filter(function(profile) return profile:match("^" .. arg) end) 
            :totable()
end

function M.execute(args)
    local choose_profile = args.fargs[1]
    vim.notify(choose_profile)
end


return M