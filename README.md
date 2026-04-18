# nvim-config
 
![Neovim](https://img.shields.io/badge/Neovim-0.11.4-25c600?style=for-the-badge&labelColor=%23555555&logo=neovim&cacheSeconds=10000)
![Lua](https://img.shields.io/badge/Lua-5.4.8-0019c6?style=for-the-badge&labelColor=%23555555&logo=lua&cacheSeconds=10000)

> Personal Neovim configuration — managed with [lazy.nvim](https://github.com/folke/lazy.nvim).

## Installation
 
```bash
git clone https://github.com/quentin-rodriguez/nvim-config ~/.config/nvim
nvim
```
 
lazy.nvim will automatically install all plugins on first launch.
 
## Structure
 
```
~/.config/nvim/
├── init.lua              # Entry point
├── lua/config/           # Configuration (options, keymaps, plugins)
├── tests/                # Tests
├── lazy-lock.json        # Locked plugin versions
├── stylua.toml           # Lua formatting (StyLua)
└── selene.toml           # Lua linter (Selene)
```
 
## Plugins
 
### Tools
- [vim-startuptime](https://github.com/dstein64/vim-startuptime) — startup time profiler
- [firenvim](https://github.com/glacambre/firenvim) — nvim inside the browser
### LSP
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) — LSP server configuration
- [mason.nvim](https://github.com/williamboman/mason.nvim) — LSP/linter/formatter installer
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) — mason ↔ lspconfig bridge
### UI
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — statusline
- [tabby.nvim](https://github.com/nanozuki/tabby.nvim) — tabline
- [nvim-notify](https://github.com/rcarriga/nvim-notify) — notifications
- [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim) — smooth scrolling
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) — file icons
### Editor
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) — fuzzy finder
- [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) — ui-select via telescope
- [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) — native fzf sorting
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — syntax parsing and highlighting
- [project.nvim](https://github.com/ahmedkhalf/project.nvim) — project management
### Completion
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) — completion engine
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) — LSP source
- [cmp-path](https://github.com/hrsh7th/cmp-path) — file path source
- [cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip) — snippet source
- [vim-vsnip](https://github.com/hrsh7th/vim-vsnip) — snippet engine
- [lspkind.nvim](https://github.com/onsails/lspkind.nvim) — completion menu icons
## Code quality
 
The project uses [StyLua](https://github.com/JohnnyMorganz/StyLua) for formatting and [Selene](https://github.com/Kampfkarren/selene) for linting, both enforced automatically in CI.
 
```bash
stylua --check lua/
selene lua/
```
 
## License
 
Personal use — no license.
