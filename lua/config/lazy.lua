-- Get vim data path, append lazy path
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- Not sure what vim.uv or vim.loop are yet
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	-- Lazy repo
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	-- Run git clone in shell
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	-- Result of the last shell command
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim \n ", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		-- Block until the user presses a key anda then exit
		vim.fn.getchar()
		os.exit(1)
	end
end
-- No clue what this does, maybe adds the plugin?
vim.opt.rtp:prepend(lazypath)

-- Set leader to space
vim.g.mapleader = " "
-- Set local leader to backslash
vim.g.maplocalleader = "\\"


require("lazy").setup({
	spec = {
		-- Auto import plugin specs in plugin directory
		{ import = "plugins" },
	},

	install = { colorscheme = {"catppuccin-mocha"}},
	-- Check for plugin updates
	checker = { enabled = true },
})
