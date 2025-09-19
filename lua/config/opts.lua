-- Tabs and spaces
vim.o.tabstop = 2
vim.o.expandtab = false
vim.o.shiftwidth = 0
vim.o.autoindent = true
vim.o.smartindent = false

-- Line numbers
-- Set to true and false in this specific way for compatibility with our switching keybind
vim.o.nu = true
vim.opt.relativenumber = false

-- Disable fill chars
vim.opt.fillchars = { eob = " " }

-- Use system clipboard and an undo file
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true

-- Keep status line at bottom and full width
vim.o.laststatus = 3

-- Enable inline diagnostic text
vim.diagnostic.config({
	virtual_text = true,
	underline = true,
})
