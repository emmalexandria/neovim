return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	-- @type snacks.Config
	opts = {
		toggle = {
			enabled = true
		},
		bufdelete = {
			enabled = true,
		},
		dashboard = {
			enabled = true,
			preset = {
				header = [[
░█▀▀░█▀▀░▀█▀░░░█░█░█▀█░█▀▄░█░█░▀█▀░█▀█░█▀▀░░
░█░█░█▀▀░░█░░░░█▄█░█░█░█▀▄░█▀▄░░█░░█░█░█░█░░
░▀▀▀░▀▀▀░░▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀░▀░▀░▀▀▀░░
░█░█░█▀█░█░█░░░█░░░█▀▀░█▀▀░█▀▄░▀█▀░█▀█░█▀█░░
░░█░░█░█░█░█░░░█░░░█▀▀░▀▀█░█▀▄░░█░░█▀█░█░█░░
░░▀░░▀▀▀░▀▀▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░▀▀▀░▀░▀░▀░▀░░]],
				-- stylua: ignore
				---@type snacks.dashboard.Item[]
				keys = {
					{ icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
					{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
					{ icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
					{ icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
					{ icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
					{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
					{ icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
					{ icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
					{ icon = "", key = "t", desc = "Update Time", action = function() Snacks.dashboard.update() end }
				},
			},
			sections = {
				{
					section = "header",
				},
				-- { pane = 2, text = ascii_clock() },
				{
					pane = 2,
					section = "terminal",
					cmd = "colorscript -e square",
					height = 4,
					padding = 1,
				},
				{
					pane = 2,
					icon = " ",
					title = "Recent Files",
					section = "recent_files",
					indent = 2,
					padding = 1,
				},
				{ pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
				{
					section = "keys",
				},
				{
					section = "startup",
				},
			},
		},
	},
}
