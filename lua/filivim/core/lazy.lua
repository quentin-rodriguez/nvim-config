local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazy_path) then
    git.clone(
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazy_path
    )
end

vim.opt.rtp:prepend(lazy_path)

require("lazy").setup("filivim.plugins", {
   performance = {
      rtp = {
         reset = false,
         disabled_plugins = {
            'netrw',
            'netrwPlugin',
            'netrwSettings',
            'netrwFileHandlers',
            'gzip',
            'zip',
            'zipPlugin',
            'tar',
            'tarPlugin',
            'getscript',
            'getscriptPlugin',
            'vimball',
            'vimballPlugin',
            '2html_plugin',
            'logipat',
            'rrhelper',
            'spellfile_plugin',
            'matchit',
         }
      }
   }
})
