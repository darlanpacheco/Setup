vim.g.dart_format_on_save = true
vim.keymap.set("n", "<leader>t", ":terminal<CR>")

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
