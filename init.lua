-- This is my Neovim config. The file structure is inspired by LazyVim, although it doesn't use LazyVim
-- lazy.nvim is the package manager

require("config.lazy")
require("config.opts")
require("config.keymaps")

vim.o.termguicolors = true
vim.cmd.colorscheme("catppuccin-mocha")
