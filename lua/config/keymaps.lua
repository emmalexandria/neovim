-- alias keymap function so that if I want to add more functionality to keymap
-- setting later i can just redefine map
local map = vim.keymap.set

-- I'm used to these keybinds from LazyVim, so they've just been copied over
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Toggle between absolute and relative line numbers
map({ "n", "v" }, '<leader>l', function()
	vim.opt.relativenumber = not vim.opt.relativenumber:get()
	vim.o.nu = not vim.opt.nu:get()
end, { desc = "Toggle line number style" })

-- I don't know exactly why the Snacks buffer deletion is better, but I'm going to make the very safe assummption that folke knows what he's doing
map("n", "<leader>bd", function()
	Snacks.bufdelete()
end, { desc = "Delete Buffer" })
map("n", "<leader>bo", function()
	Snacks.bufdelete.other()
end, { desc = "Delete Other Buffers" })
map("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

Snacks.toggle.option("conceallevel",
	{ off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2, name = "Conceal Level" }):map("<leader>uc")

map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
map({ "n", "x" }, "<leader>ca", function() require("tiny-code-action").code_action() end,
	{ desc = "Code Actions", noremap = true })

map("n", "<leader>W", function() require("which-key").show() end, { desc = "Open whichkey", noremap = true })
