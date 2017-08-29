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
set relativenumber

setlocal  spell spelllang=ru

source plugins.vim
source nerd_conf.vim
source my_key_binding.vim
source util_snip.vim

"pdv plugin template path
let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"
let g:UltiSnipsSnippetDirectories=["~/git-repos/vimrs/UltiSnips"]

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

"foldding
set foldmethod=indent
let g:deoplete#enable_at_startup = 1
let g:move_key_modifier = 'C'
let mapleader = "\<Space>"

"neomake
autocmd! BufWritePost * Neomake
let g:neomake_rust_enabled_makers = []
"neomake

"   /vim-move
"au BufReadPost *.tpl set ft=html
au BufRead,BufNewFile *.tpl set syntax=php
autocmd! BufRead * retab
