syntax on

let g:rehash256 = 1

colorscheme nova

set autoread
set background=dark
set colorcolumn=80
set colorcolumn=80
set cursorline
set expandtab
set fillchars+=vert:\ 
set ignorecase
set iminsert=0
set imsearch=0
set keymap=russian-jcukenwin
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set list
set listchars=tab:⇢\ ,eol:¬,trail:·
set noswapfile
set nowrap
set number
set shiftwidth=4
set smartindent
set smarttab
set tabstop=4
set termguicolors
set updatetime=250

setlocal  spell spelllang=ru

" plug {
call plug#begin('~/.vim/plugged')
Plug 'Ioannis-Kapoulas/vim-autoprefixer'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/indentLine'
Plug 'ap/vim-css-color'
Plug 'dyng/ctrlsf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'equalsraf/neovim-gui-shim'
Plug 'ervandew/supertab'
Plug 'eugen0329/vim-esearch'
Plug 'godlygeek/tabular'
Plug 'gregsexton/matchtag'
Plug 'honza/vim-snippets'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'matze/vim-move'
Plug 'mhinz/vim-signify'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'timonv/vim-cargo'
Plug 'tobyS/pdv'
Plug 'tobyS/vmustache'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wting/rust.vim'
call plug#end()
" }

"pdv plugin template path
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"

"   airline {
let g:indentLine_char = '⠂'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = "#D32F30"
let g:indentLine_color_tty_light = 7
let g:indentLine_color_dark = 1
set laststatus=2
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:lightline = { 'colorscheme': 'nova' }
"   }

"foldding {
set foldmethod=indent
" }

"   nerdtree {
let NERDTreeWinSize = 25
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:nerdtree_tabs_open_on_console_startup = 1
"   }

"   nerdtree-git-plugin {
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
"   }

"   vim-move {
let g:deoplete#enable_at_startup = 1
let g:move_key_modifier = 'C'
" }

" Leader Key
let mapleader = "\<Space>"

"neomake init after open file
autocmd! BufWritePost * Neomake

" ultisnips {

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" }

" Move hjkl in insert mode with clamped alt
inoremap <A-h> <left>
inoremap <A-j> <down>
inoremap <A-k> <up>
inoremap <A-l> <right>

"Delete in insert mode
inoremap <A-d> <C-o>d 
inoremap <A-x> <C-o>x
inoremap <A-D> <C-o>D
inoremap <A-X> <C-o>X

"New Line in insert mode
inoremap <A-O> <C-o>O
inoremap <A-o> <C-o>o

"Reloda vimrc space + r
nnoremap <leader>r :autocmd BufReadPost $MYVIMRC source $MYVIMRC<CR>

"pdv hot keys start
nnoremap <leader>t :call pdv#DocumentWithSnip()<CR>
"pdv hot keys end
"
"   /vim-move
au BufRead,BufNewFile *.tpl set syntax=php

autocmd! BufRead * retab
