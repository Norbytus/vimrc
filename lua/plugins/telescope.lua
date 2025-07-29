return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{ "<leader>ff", "<CMD>Telescope find_files<CR>", "n" },
		{ "<leader>fg", "<CMD>Telescope grep_string<CR>", "n" },
	},
}
