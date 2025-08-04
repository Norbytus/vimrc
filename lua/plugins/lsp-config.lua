return {
	"neovim/nvim-lspconfig",
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "intelephense", "rust-analyzer"},
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
		{'gr', vim.lsp.buf.references, 'n'},
		{'gi', vim.lsp.buf.implementation, 'n'},
		{'<leader>f', vim.lsp.buf.format, 'n'},
		{'<leader>lr', vim.lsp.buf.rename, 'n'},
        {'<leader>la', vim.lsp.buf.code_action, 'n'},
	}
}
