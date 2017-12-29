call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'terryma/vim-multiple-cursors'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'

Plug 'airblade/vim-gitgutter'

Plug 'MattesGroeger/vim-bookmarks'

Plug 'Raimondi/delimitMate' "Auto close '['

Plug 'Ioannis-Kapoulas/vim-autoprefixer' "Auto prefixer for css

Plug 'godlygeek/tabular'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'gregsexton/matchtag'
Plug 'easymotion/vim-easymotion'
Plug 'dyng/ctrlsf.vim'

Plug 'mattn/emmet-vim' "For html css.

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'equalsraf/neovim-gui-shim'

Plug 'altercation/vim-colors-solarized'
Plug 'zanglg/nova.vim'
Plug 'Yggdroot/LeaderF', { 'do': '.\install.sh' }

Plug 'YaroslavMolchan/pdv'
Plug 'tobyS/vmustache'
Plug 'SirVer/ultisnips'

Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}

Plug 'joonty/vim-phpqa'
call plug#end()
