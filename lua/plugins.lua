return require("packer").startup(function()
	use("tpope/vim-fugitive")
	use("terryma/vim-multiple-cursors")
	use("tpope/vim-surround")
	use("tpope/vim-sensible")
	use("tpope/vim-commentary")
	use("airblade/vim-gitgutter")
	use("MattesGroeger/vim-bookmarks")
	use("Raimondi/delimitMate") -- Auto close '['
	use("Ioannis-Kapoulas/vim-autoprefixer") -- Auto prefixer for css
	use("godlygeek/tabular")
	use("gregsexton/matchtag")
	use("dyng/ctrlsf.vim")
	use("mattn/emmet-vim") -- "For html css.
	use("equalsraf/neovim-gui-shim")
	use("tobyS/vmustache")
	use("SirVer/ultisnips")
	use("rust-lang/rust.vim")
	use("roxma/nvim-yarp")
	use("janko/vim-test")
	use("xolox/vim-misc")
	use("diepm/vim-rest-console")
	use("tpope/vim-abolish")
	use({ "kaicataldo/material.vim", branch = "main" })
	use("swekaj/php-foldexpr.vim")
	use("tyru/open-browser.vim")
	use("ryanoasis/vim-devicons")
	use("voldikss/vim-floaterm")
	use("matze/vim-move")
	use("aperezdc/vim-template")
	use({
		"phpactor/phpactor",
		config = function()
			vim.g["phpactorInputListStrategy"] = "phpactor#input#list#fzf"
			vim.g["phpactorQuickfixStrategy"] = "phpactor#quickfix#fzf"
		end,
	})
	use("kkoomen/vim-doge")
	use("rbgrouleff/bclose.vim")
	use("tpope/vim-dadbod")
	use("kristijanhusak/vim-dadbod-ui")
	use({ "junegunn/fzf", run = "-> fzf#install()" })
	use("junegunn/fzf.vim")
	use("APZelos/blamer.nvim")
	use("puremourning/vimspector")
	use("lyokha/vim-xkbswitch")
	use("jdsimcoe/abstract.vim")
	use("Badacadabra/vim-archery")
	use("dhruvasagar/vim-open-url")
	use("Xuyuanp/scrollbar.nvim")
	use({ "kevinhwang91/rnvimr", tag = "v0.5.0" })
	use("psliwka/vim-smoothie")
	use("kyazdani42/nvim-web-devicons")
	use("nvim-lua/popup.nvim")
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("pineapplegiant/spaceduck")
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
    }
	use("bluz71/vim-moonfly-colors")
	use("skywind3000/vim-quickui")
	use("rhysd/conflict-marker.vim")
	use("simrat39/symbols-outline.nvim")
	use("jbyuki/quickmath.nvim")
	use("thibthib18/mongo-nvim")
	use("MunifTanjim/nui.nvim")
	use({ "folke/tokyonight.nvim", branch = "main" })
	use("mfussenegger/nvim-jdtls")
	use("folke/twilight.nvim")
	use("udalov/kotlin-vim")
	use("nvim-lua/plenary.nvim")
	use("neovim/nvim-lspconfig")
	use("williamboman/nvim-lsp-installer")
	use("tamago324/nlsp-settings.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use("nvim-lualine/lualine.nvim")
	use("mhartington/oceanic-next")
	use("EdenEast/nightfox.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("lukas-reineke/indent-blankline.nvim")
	use("ray-x/lsp_signature.nvim")
	use("kevinhwang91/nvim-bqf")
	use("fedepujol/move.nvim")
    use {
        'VonHeikemen/searchbox.nvim',
        requires = {
        {'MunifTanjim/nui.nvim'}
        }
    }
    use {
        'phaazon/hop.nvim',
        branch = 'v1',
        config = function()
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
    use {
        "AckslD/nvim-neoclip.lua",
        requires = {
            {'tami5/sqlite.lua', module = 'sqlite'},
            {'nvim-telescope/telescope.nvim'},
        },
        config = function()
            require('neoclip').setup()
        end,
    }
	use("lewis6991/spellsitter.nvim")
    use ("tpope/vim-dispatch")
    use ('eandrju/cellular-automaton.nvim')
    use {'nyoom-engineering/oxocarbon.nvim'}
end)
