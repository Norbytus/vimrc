return {
	"neovim/nvim-lspconfig",
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			automatic_installation = true,
		})

		local lspconfig = require("lspconfig")

		local servers = { "lua_ls"}

		for _, server in ipairs(servers) do
			lspconfig[server].setup({

			})
		end
	end,
	keys = {
		{'gd', vim.lsp.buf.definition, 'n'},
		{'gr', '<cmd>Telescope lsp_references<CR>', 'n'},
		{'gi', '<cmd>Telescope lsp_implementations<CR>', 'n'},
		{'<leader>f', vim.lsp.buf.format, 'n'},
		{'<leader>lr', vim.lsp.buf.rename, 'n'},
        {'<leader>la', vim.lsp.buf.code_action, 'n'},
	}
}
