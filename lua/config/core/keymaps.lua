local map = vim.keymap.set

local builtin = require("telescope.builtin")
local telescope = require("telescope")
map("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
map("n", "<leader>fr", builtin.oldfiles, { desc = "Recent files" })
map("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
map("n", "<leader>fe", builtin.find_files, { desc = "File explorer" })
map("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
map("n", "<leader>fe", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", {})
