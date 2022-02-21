return require('packer').startup(function()
    use 'tpope/vim-fugitive'
    use 'terryma/vim-multiple-cursors'
    use 'tpope/vim-surround'
    use 'tpope/vim-sensible'
    use 'tpope/vim-commentary'
    use 'airblade/vim-gitgutter'
    use 'MattesGroeger/vim-bookmarks'
    use 'Raimondi/delimitMate' -- Auto close '['
    use 'Ioannis-Kapoulas/vim-autoprefixer' -- Auto prefixer for css
    use 'godlygeek/tabular'
    use 'gregsexton/matchtag'
    use 'dyng/ctrlsf.vim'
    use 'mattn/emmet-vim' -- "For html css.
    use 'equalsraf/neovim-gui-shim'
    use 'tobyS/vmustache'
    use 'SirVer/ultisnips'
    use 'rust-lang/rust.vim'
    use 'roxma/nvim-yarp'
    use 'janko/vim-test'
    use 'xolox/vim-misc'
    use 'diepm/vim-rest-console'
    use 'tpope/vim-abolish'
    use { 'kaicataldo/material.vim', branch = 'main' }
    use 'swekaj/php-foldexpr.vim'
    use 'tyru/open-browser.vim'
    use 'ryanoasis/vim-devicons'
    use 'voldikss/vim-floaterm'
    use 'matze/vim-move'
    use 'aperezdc/vim-template'
    use {
        "phpactor/phpactor",
        config = function()
            vim.g['phpactorInputListStrategy'] = 'phpactor#input#list#fzf'
            vim.g['phpactorQuickfixStrategy'] = 'phpactor#quickfix#fzf'
        end
    }
    use 'kkoomen/vim-doge'
    use 'rbgrouleff/bclose.vim'
    use 'tpope/vim-dadbod'
    use 'kristijanhusak/vim-dadbod-ui'
    use { 'junegunn/fzf', run = '-> fzf#install()' }
    use 'junegunn/fzf.vim'
    use 'APZelos/blamer.nvim'
    use 'puremourning/vimspector'
    use 'lyokha/vim-xkbswitch'
    use 'jdsimcoe/abstract.vim'
    use 'Badacadabra/vim-archery'
    use 'dhruvasagar/vim-open-url'
    use 'Xuyuanp/scrollbar.nvim'
    use 'kevinhwang91/rnvimr'
    use 'psliwka/vim-smoothie'
    use 'kyazdani42/nvim-web-devicons'
    use 'pwntester/octo.nvim'
    use 'nvim-lua/popup.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'pineapplegiant/spaceduck'
    use 'romgrk/barbar.nvim'
    use 'bluz71/vim-moonfly-colors'
    use {
        'phaazon/hop.nvim',
        branch = 'v1',
        config = function()
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
    use 'skywind3000/vim-quickui'
    use 'tpope/vim-dispatch'
    use 'rhysd/conflict-marker.vim'
    use 'simrat39/symbols-outline.nvim'
    use 'jbyuki/quickmath.nvim'
    use 'thibthib18/mongo-nvim'
    use 'MunifTanjim/nui.nvim'
    use 'VonHeikemen/searchbox.nvim'
    use { 'folke/tokyonight.nvim', branch = 'main' }
    use 'mfussenegger/nvim-jdtls'
    use 'folke/twilight.nvim'
    use 'udalov/kotlin-vim'
    use 'NTBBloodbath/rest.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'neovim/nvim-lspconfig'
    use "williamboman/nvim-lsp-installer"
    use "tamago324/nlsp-settings.nvim"
    use "jose-elias-alvarez/null-ls.nvim"
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use "nvim-lualine/lualine.nvim"
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }
    use "lukas-reineke/indent-blankline.nvim"
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- settings without a patched font or icons
                icons = false,
                fold_open = "v", -- icon used for open folds
                fold_closed = ">", -- icon used for closed folds
                indent_lines = false, -- add an indent guide below the fold icons
                signs = {
                    -- icons / text used for a diagnostic
                    error = "error",
                    warning = "warn",
                    hint = "hint",
                    information = "info"
                },
                use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
            }
        end
    }
    use "ray-x/lsp_signature.nvim"
end)
