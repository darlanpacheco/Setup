vim.g.dart_format_on_save = true

vim.keymap.set("n", "<leader>t", ":terminal<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>m", ":Mason<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h", ":Gitsigns preview_hunk<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>w", ":bwi<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader><Right>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader><Left>", ":bprev<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>s", ":w!<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader><Up>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<leader><Down>", "<C-w>l", { noremap = true, silent = true })

return {
	{
		"dart-lang/dart-vim-plugin",
	},
	{
		"akinsho/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = true,
	},
}
