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
set background=dark
"colorscheme nova
color dracula
set colorcolumn=80
set listchars=tab:⇢\ ,eol:¬,trail:·
set fillchars+=vert:\ 
set list
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set colorcolumn=80
set ignorecase

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set relativenumber

set foldmethod=indent "Folding
autocmd! BufRead * retab "replace all space on tab

setlocal spell spelllang=ru

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
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

Plug 'gregsexton/matchtag'
Plug 'easymotion/vim-easymotion'
Plug 'dyng/ctrlsf.vim'

Plug 'mattn/emmet-vim' "For html css.

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'equalsraf/neovim-gui-shim'

Plug 'altercation/vim-colors-solarized'
Plug 'zanglg/nova.vim'
Plug 'Yggdroot/LeaderF', { 'do': '.\install.sh'}

Plug 'YaroslavMolchan/pdv' "Gen dock for php
Plug 'tobyS/vmustache'
Plug 'SirVer/ultisnips'

Plug 'jsfaint/gen_tags.vim'

Plug 'w0rp/ale'

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'rust-lang/rust.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ 'tag': '0.1.119'
    \ }
" Plug 'TysonAndre/LanguageServer-phan-neovim',  {'do': 'composer install'}

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'dracula/vim', { 'as': 'dracula' }

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" IMPORTANTE: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-html-subscope'
Plug 'ncm2/ncm2-tern', {'do': 'npm install'}
Plug 'ncm2/ncm2-ultisnips'
Plug 'filipekiss/ncm2-look.vim'
" Plug 'stephpy/vim-php-cs-fixer'

" Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
" Plug 'phpactor/ncm2-phpactor'
call plug#end()

let laststatus=2
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'

let g:indentLine_char = '⠂'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = "#D32F30"
let g:indentLine_color_tty_light = 7
let g:indentLine_color_dark = 1

" let g:ale_php_phpcbf_executable = 'phan'
let g:ale_php_phan_use_client=0

let NERDTreeWinSize = 25
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:nerdtree_tabs_open_on_console_startup = 1

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

let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"


let mapleader = "\<Space>"

"Using arrow key in insert mode 'alt+arrow_key'
inoremap <A-h> <left>
inoremap <A-j> <down>
inoremap <A-k> <up>
inoremap <A-l> <right>

nmap <leader>gn <Plug>GitGutterNextHunk
nmap <leader>gp <Plug>GitGutterPrevHunk

nnoremap <leader>p :call pdv#DocumentWithSnip()<CR>

nnoremap <leader>tb :tags<CR>

nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>

nnoremap <leader>gn :GitGutterNextHunk<CR>
nnoremap <leader>gp :GitGutterNextHunk<CR>

" autocmd FileType php LanguageClientStart
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ }
autocmd FileType rs LanguageClientStart
" Keyboard shortcuts to go to the definition or type definition.
nnoremap <silent> g1 :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> g2 :call LanguageClient#textDocument_typeDefinition()<CR>
" These shortcuts (Ctrl-W followed by the string 'g1', etc.)
" can be used to open the definition in a new pane.
nnoremap <silent> <C-W>g1 :call LanguageClient#textDocument_definition({'gotoCmd': 'split'})<CR>
nnoremap <silent> <C-W>g2 :call LanguageClient#textDocument_typeDefinition({'gotoCmd': 'split'})<CR>
" let g:phan_analyzed_directory = '/home/alex/git-repos/vimrc/test_php/'
" let g:phan_analyzed_directory = '/home/alex/sites/flowwow.loc/'
" let g:phan_executable_path = '/usr/bin/phan'
" let g:phan_additional_cli_flags = ['--strict-type-checking', '--plugin', 'InvokePHPNativeSyntaxCheckPlugin']
autocmd FileType php setlocal omnifunc=phpactor#Complete

set completeopt=noinsert,menuone,noselect
" inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

" c-j c-k for moving in snippet
" let g:UltiSnipsExpandTrigger      = "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger   = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger  = "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

let g:ncm2_look_enabled = 1
"
" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>

" Invoke the context menu
nmap <Leader>mm :call phpactor#ContextMenu()<CR>

" Invoke the navigation menu
nmap <Leader>nn :call phpactor#Navigate()<CR>

" Goto definition of class or class member under the cursor
nmap <Leader>o :call phpactor#GotoDefinition()<CR>

" Transform the classes in the current file
nmap <Leader>tt :call phpactor#Transform()<CR>

" Generate a new class (replacing the current file)
nmap <Leader>cc :call phpactor#ClassNew()<CR>

" Extract expression (normal mode)
nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>

" Extract method from selection
vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>

let g:gen_tags#gtags_default_map = 1
" let g:php_cs_fixer_path = '/usr/local/bin/phpcs'
