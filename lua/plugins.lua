local packer = require('core.packer')

local plugins = {
    ['packer.nvim'] = { 
        'wbthomason/packer.nvim' 
    }
}

packer.run(plugins)