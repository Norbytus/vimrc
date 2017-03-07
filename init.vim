syntax on
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set autoread
set updatetime=250
set noswapfile
set number
set nowrap
set cursorline
let g:rehash256 = 1
set termguicolors
colorscheme nova
set background=dark
"set expandtab
set colorcolumn=80
set listchars=tab:⇢\ ,eol:¬,trail:·
set fillchars+=vert:\ 
set list
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set colorcolumn=80
set ignorecase

"tab setting
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

setlocal  spell spelllang=ru
"   plug

call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'mhinz/vim-signify'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'terryma/vim-multiple-cursors'
Plug 'matze/vim-move'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'Raimondi/delimitMate'
Plug 'wting/rust.vim'
Plug 'equalsraf/neovim-gui-shim'
Plug 'Ioannis-Kapoulas/vim-autoprefixer'
Plug 'godlygeek/tabular'
Plug 'sheerun/vim-polyglot'
Plug 'eugen0329/vim-esearch'
Plug 'ap/vim-css-color'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'easymotion/vim-easymotion'
Plug 'gregsexton/matchtag'
Plug 'neomake/neomake'
Plug 'dyng/ctrlsf.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Yggdroot/indentLine'
Plug 'tobyS/pdv'
Plug 'tobyS/vmustache'
call plug#end()

"   /plug

"pdv plugin template path
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"

"   airline

let g:indentLine_char = '⠂'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = "#D32F30"
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

set laststatus=2
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:lightline = { 'colorscheme': 'nova' }
"   /airline

"   syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"foldding
set foldmethod=indent
"foldding

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"   /syntastic

"   nerdtree

let NERDTreeWinSize = 25
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:nerdtree_tabs_open_on_console_startup = 1

"   /nerdtree
"
"   emmet
"   /emmet

"   nerdtree-git-plugin

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

"   /nerdtree-git-plugin

"   vim-move

let g:deoplete#enable_at_startup = 1
let g:move_key_modifier = 'C'
let mapleader = "\<Space>"

"neomake
autocmd! BufWritePost * Neomake
"neomake

" ultisnips

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" /ultisnips

inoremap <A-h> <left>
inoremap <A-j> <down>
inoremap <A-k> <up>
inoremap <A-l> <right>

inoremap <A-d> <C-o>d
inoremap <A-x> <C-o>x
inoremap <A-D> <C-o>D
inoremap <A-X> <C-o>X
inoremap <A-O> <C-o>O
inoremap <A-o> <C-o>o

"pdv hot keys start
nnoremap <buffer><Leader>p :call pdv#DocumentWithSnip()<cr>
"pdv hot keys end
"
"   /vim-move
"au BufReadPost *.tpl set ft=html
au BufRead,BufNewFile *.tpl set syntax=php

autocmd! BufRead * retab
"
