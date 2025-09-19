return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader><leader>", "<cmd>Telescope find_files<cr>", desc = "Telescope files" },
		{ "<leader>ff",       "<cmd>Telescope find_files<cr>", desc = "Telescope files" },
		{ "<leader>fb",       "<cmd>Telescope buffers<cr>",    desc = "Telescope buffers" }
	},
}
