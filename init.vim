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
set relativenumber
set foldmethod=indent "Folding
set encoding=UTF-8
set exrc
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
Plug 'roxma/nvim-yarp'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'vim-vdebug/vdebug'
Plug 'janko/vim-test'
Plug 'xolox/vim-misc'
Plug 'mhinz/vim-startify'
Plug 'diepm/vim-rest-console'
Plug 'tpope/vim-abolish'
Plug 'neoclide/coc.nvim'
Plug 'kaicataldo/material.vim'

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

nmap <leader>gn <Plug>GitGutterNextHunk
nmap <leader>gp <Plug>GitGutterPrevHunk

nnoremap <leader>p :call pdv#DocumentWithSnip()<CR>

nnoremap <leader>tb :tags<CR>

nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>

set completeopt=noinsert,menuone,noselect
" inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

" c-j c-k for moving in snippet
let g:UltiSnipsExpandTrigger      = "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger   = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger  = "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

let g:gen_tags#gtags_default_map = 1
" let g:ale_linters = {
" \   'php': ['langserver', 'php', 'phpcs', 'phpmd', 'phpstan', 'psalm'],
" \}

nnoremap <leader>l :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

nnoremap <leader>t : Vista<CR>
nnoremap <leader>tt : Vista!<CR>

let g:ruby_host_prog = '/home/alex/.gem/ruby/2.6.0/bin/neovim-ruby-host'

let g:vdebug_keymap = {
            \    "run" : "<leader><F5>",
            \    "run_to_cursor" : "<leader><F9>",
            \    "step_over" : "<leader><F2>",
            \    "step_into" : "<leader><F3>",
            \    "step_out" : "<leader><F4>",
            \    "close" : "<leader><F6>",
            \    "detach" : "<leader><F7>",
            \    "set_breakpoint" : "<leader><F10>",
            \    "get_context" : "<leader>dc",
            \    "eval_under_cursor" : "<leader>uc",
            \    "eval_visual" : "<Leader>e",
            \}

let g:vista_sidebar_position = 'vertical botright'

let g:vista_sidebar_width = 30
let g:vista_echo_cursor = 1
let g:vista_cursor_delay = 400
let g:vista_close_on_jump = 0
let g:vista_stay_on_open = 1
let g:vista_blink = [2, 100]
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_fzf_preview = ['right:50%']
let g:ale_php_phan_use_client = 1
let g:ale_php_langserver_use_global = 1
hi Normal guibg=NONE ctermbg=NONE

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

let g:coc_snippet_next = '<tab>'

nmap <silent> cgd <Plug>(coc-definition)
nmap <silent> cgy <Plug>(coc-type-definition)
nmap <silent> cgi <Plug>(coc-implementation)
nmap <silent> cgr <Plug>(coc-references)

let g:material_theme_style = 'palenight'
colorscheme material

let g:vrc_trigger = '<C-i>'
set ft=rest
let g:coc_global_extensions=[ 'coc-omnisharp']
