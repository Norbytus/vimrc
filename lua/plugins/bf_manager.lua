return {
  'j-morano/buffer_manager.nvim',
  dependencies = {
        'nvim-lua/plenary.nvim'
  },
  opts = {},
  keys = {
	{ "=", function() require("buffer_manager.ui").toggle_quick_menu() end, "n" },
	{ "<leader>>", function() require("buffer_manager.ui").nav_next() end, "n" },
    { "<leader><", function() require("buffer_manager.ui").nav_prev() end, "n" },
  },
}
