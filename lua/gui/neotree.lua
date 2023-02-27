return {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function ()
        local present, neotree = pcall(require, "neotree")

        -- vim.cmd [[ let g.neo_tree_remove_legacy_commands = 1 ]]

        if not present then
            return
        end



        neotree.setup {

        }
    end
}