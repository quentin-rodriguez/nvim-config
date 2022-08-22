local packer = require('core.packer')

local plugins = {
    ['nvim-neo-tree/neo-tree.nvim'] = {
        requires = { 
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    }
}


packer.run(plugins)
