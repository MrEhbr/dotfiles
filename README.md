# MrEhbr dotfiles

**Warning**: Don’t blindly use my settings unless you know what that entails. Use at your own risk!

This repository is modified version of [craftzdog/dotfiles-public](https://github.com/craftzdog/dotfiles-public)

## Contents

- vim (NeoVim) config
  - Plugins are managed with [packer](https://github.com/wbthomason/packer.nvim)
- fish config

## Vim setup

Requires Neovim (>= 0.5)

- [packer](https://github.com/wbthomason/packer.nvim) - A use-package inspired plugin manager for Neovim
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - A collection of configurations for Neovim's built-in LSP
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - [Treesitter](https://github.com/tree-sitter/tree-sitter) configurations and abstraction layer for Neovim
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - A completion plugin for neovim coded in Lua
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - A highly extendable fuzzy finder over lists

## Shell setup (macOS & Linux)

- [Fish shell](https://fishshell.com/)
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
- [Pure](https://github.com/pure-fish/pure) - Shell theme
- [Async-prompt](https://github.com/acomagu/fish-async-prompt) - Async prompt
- [Git plugin](https://github.com/jhillyerd/plugin-git) - Git aliases
- [Exa](https://the.exa.website/) - `ls` replacement

## How to install

1. Run `make install`
2. run `:PackerInstall` command on neovim
