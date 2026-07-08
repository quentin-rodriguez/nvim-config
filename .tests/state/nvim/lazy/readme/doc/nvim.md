# nvim-config
 
> Personal Neovim configuration — managed with [lazy.nvim](https://github.com/folke/lazy.nvim).
 
![Neovim](https://img.shields.io/badge/Neovim-0.11.4-25c600?style=flat-square&labelColor=%23555555&logo=neovim&cacheSeconds=10000)
![Lua](https://img.shields.io/badge/Lua-5.4.8-0019c6?style=flat-square&labelColor=%23555555&logo=lua&cacheSeconds=10000)
 
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
 
### UI
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) — bufferline
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — statusline
- [alpha-nvim](https://github.com/goolord/alpha-nvim) — dashboard
- [mini.notify](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-notify.md) — notifications
- [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim) — colorscheme (duskfox)
### LSP
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) — LSP server configuration
- [mason.nvim](https://github.com/mason-org/mason.nvim) — LSP/linter/formatter installer
- [mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) — mason ↔ lspconfig bridge
- [conform.nvim](https://github.com/stevearc/conform.nvim) — formatter
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — syntax parsing and highlighting
- [blink.cmp](https://github.com/saghen/blink.cmp) — completion engine
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) — snippet collection
### Navigation
- [oil.nvim](https://github.com/stevearc/oil.nvim) — file explorer
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) — fuzzy finder
- [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) — ui-select via telescope
- [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) — native fzf sorting
### Editing
- [mini.pairs](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-pairs.md) — auto pairs
- [mini.surround](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-surround.md) — surround actions
- [ts-comments.nvim](https://github.com/folke/ts-comments.nvim) — treesitter-aware comments
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) — highlight and search TODO comments
- [lazydev.nvim](https://github.com/folke/lazydev.nvim) — Lua LSP for Neovim config
### Tools
- [persistence.nvim](https://github.com/folke/persistence.nvim) — session management
- [markview.nvim](https://github.com/OXY2DEV/markview.nvim) — markdown preview
- [overseer.nvim](https://github.com/stevearc/overseer.nvim) — task runner
- [neotest](https://github.com/nvim-neotest/neotest) — test runner
- [vim-startuptime](https://github.com/dstein64/vim-startuptime) — startup time profiler
### Utils
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) — utility library
- [mini.icons](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-icons.md) — icons
- [nvim-nio](https://github.com/nvim-neotest/nvim-nio) — async library

## Code quality
 
The project uses [StyLua](https://github.com/JohnnyMorganz/StyLua) for formatting and [Selene](https://github.com/Kampfkarren/selene) for linting, both enforced automatically in CI.
 
```bash
stylua --check lua/
selene lua/
```
 
## License
 
Personal use — no license.

<!-- vim: set ft=markdown: -->