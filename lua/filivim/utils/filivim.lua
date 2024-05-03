_G.filivim = {}

function filivim.append_opts(options)
    for option, settings in pairs(options) do
        for setting, value in pairs(settings) do
            vim[option][setting] = value
        end
    end
end

return filivim
