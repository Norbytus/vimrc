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
set listchars=tab:⇢\ ,eol:¬,trail:·
set fillchars+=vert:\ 
set list
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set colorcolumn=80,120
set ignorecase
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set encoding=UTF-8
set exrc
set foldmethod=indent
set nofoldenable
autocmd! BufRead * retab "replace all space on tab
setlocal spell spelllang=ru

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive', {'tag': 'v2.5'}
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
Plug 'zanglg/nova.vim'
Plug 'Yggdroot/LeaderF', { 'do': '.\install.sh'}
Plug 'YaroslavMolchan/pdv' "Gen dock for php
Plug 'tobyS/vmustache'
Plug 'SirVer/ultisnips'
Plug 'jsfaint/gen_tags.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'rust-lang/rust.vim'
Plug 'roxma/nvim-yarp'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-vdebug/vdebug'
Plug 'janko/vim-test'
Plug 'xolox/vim-misc'
Plug 'diepm/vim-rest-console'
Plug 'tpope/vim-abolish'
Plug 'neoclide/coc.nvim'
Plug 'kaicataldo/material.vim'
Plug 'evidens/vim-twig'
Plug 'NLKNguyen/pipe.vim'
Plug 'NLKNguyen/pipe-mysql.vim'

call plug#end()

let laststatus=2
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='nova'

let g:indentLine_char = '⠂'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = "#D32F30"
let g:indentLine_color_tty_light = 7
let g:indentLine_color_dark = 1

let NERDTreeWinSize = 25
let g:NERDTreeMinimalUI = 1
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

nmap <leader>gn <Plug>(GitGutterNextHunk)
nmap <leader>gp <Plug>(GitGutterPrevHunk)

nnoremap <leader>p :call pdv#DocumentWithSnip()<CR>

nnoremap <leader>tb :tags<CR>

nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>

" c-j c-k for moving in snippet
let g:UltiSnipsExpandTrigger      = "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger   = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger  = "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

let g:gen_tags#gtags_default_map = 1

"let g:ruby_host_prog = '/home/alex/.gem/ruby/2.5.0/bin/neovim-ruby-host'

let g:vdebug_keymap = {
            \    "run" : "<leader>1",
            \    "run_to_cursor" : "<leader>9",
            \    "step_over" : "<leader>2",
            \    "step_into" : "<leader>3",
            \    "step_out" : "<leader>4",
            \    "close" : "<leader>6",
            \    "detach" : "<leader>7",
            \    "set_breakpoint" : "<leader>0",
            \    "get_context" : "<leader>dc",
            \    "eval_under_cursor" : "<leader>uc",
            \    "eval_visual" : "<Leader>e",
            \}

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
nnoremap <silent> K :call <SID>show_documentation()<CR>

nmap <silent> cgd <Plug>(coc-definition)
nmap <silent> cgy <Plug>(coc-type-definition)
nmap <silent> cgi <Plug>(coc-implementation)
nmap <silent> cgr <Plug>(coc-references)
xmap <leader>cf  <Plug>(coc-format-selected)
nmap <leader>cf  <Plug>(coc-format-selected)
xmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>ca  <Plug>(coc-codeaction-selected)
nmap <leader>cac  <Plug>(coc-codeaction)
nmap <leader>cqf  <Plug>(coc-fix-current)
nmap <leader>cd  <Plug>(coc-action-documentSymbols)
nmap <leader>cr  <Plug>(coc-rename)
nmap <leader>ce  <Plug>(coc-refactor)

let g:material_theme_style = 'palenight'
colorscheme material
