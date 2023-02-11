_G.utils = {}

function utils.join(...)
    return table.concat({...}, '/')
end

function utils.append_opts(options)
    for scope, settings in pairs(options) do
        for setting, value in pairs(settings) do
            vim[scope][setting] = value
        end
    end
end

return utils