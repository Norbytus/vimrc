set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set autoread
set updatetime=250
set noswapfile
set number
set relativenumber
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
autocmd! BufRead * retab "replace all space on tab
setlocal spell spelllang=ru
set autoread
au CursorHold * checktime

let mapleader = "\<Space>"

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
Plug 'Yggdroot/indentLine'
Plug 'equalsraf/neovim-gui-shim'
Plug 'Yggdroot/LeaderF', { 'do': '.\install.sh'}
Plug 'YaroslavMolchan/pdv' "Gen dock for php
Plug 'tobyS/vmustache'
Plug 'SirVer/ultisnips'
Plug 'rust-lang/rust.vim'
Plug 'roxma/nvim-yarp'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-vdebug/vdebug'
Plug 'janko/vim-test'
Plug 'xolox/vim-misc'
Plug 'diepm/vim-rest-console'
Plug 'tpope/vim-abolish'
Plug 'neoclide/coc.nvim', {'tag': 'v0.0.76'}
Plug 'kaicataldo/material.vim'
Plug 'evidens/vim-twig'
Plug 'NLKNguyen/pipe.vim'
Plug 'NLKNguyen/pipe-mysql.vim'
Plug 'liuchengxu/vista.vim'
Plug 'swekaj/php-foldexpr.vim'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'voldikss/vim-floaterm'
Plug 'matze/vim-move'
Plug 'itchyny/lightline.vim'
Plug 'aperezdc/vim-template'
Plug 'phpactor/phpactor', {'tag': '0.14.1', 'for': 'php', 'do': 'composer install --no-dev -o'}
Plug 'kkoomen/vim-doge'
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'sakhnik/nvim-gdb'
call plug#end()

let laststatus=2

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
" let g:nerdtree_tabs_open_on_console_startup = 1

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

"Using arrow key in insert mode 'alt+arrow_key' inoremap <A-h> <left>
inoremap <A-j> <down>
inoremap <A-k> <up>
inoremap <A-l> <right>

nmap <leader>gn <Plug>(GitGutterNextHunk)
nmap <leader>gp <Plug>(GitGutterPrevHunk)

nnoremap <leader>p :call pdv#DocumentWithSnip()<CR>

nnoremap <leader>vr :source ~/.config/nvim/init.vim<CR>

" c-j c-k for moving in snippet
let g:UltiSnipsExpandTrigger      = "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger   = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger  = "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

let g:ruby_host_prog = '/home/alex/.gem/ruby/2.5.0/bin/neovim-ruby-host'

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
            \    "eval_visual" : "<Leader>de",
            \}

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
nnoremap <silent> K :call <SID>show_documentation()<CR>

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
xmap cf <Plug>(coc-format-selected)
nmap <leader>cr <Plug>(coc-rename)
nmap ce <Plug>(coc-refactor)
nnoremap <silent> <space>a  :CocAction<cr>

let g:material_theme_style = 'palenight'
colorscheme material

let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1


let b:phpfold_use = 1
let b:phpfold_group_iftry = 0
let b:phpfold_group_args = 1
let b:phpfold_group_case = 1
let b:phpfold_heredocs = 1
let b:phpfold_docblocks = 1
let b:phpfold_doc_with_funcs = 1
let b:phpfold_text = 1
let b:phpfold_text_right_lines = 1
let b:phpfold_text_percent = 0

let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let test#neovim#term_position = "topleft"
nmap <leader>tn :TestNearest<CR>
nmap <leader>tf :TestFile<CR>
nmap <leader>ts :TestSuite<CR>
nmap <leader>tl :TestLast<CR>
nmap <leader>tv :TestVisit<CR>

nmap <leader>e :FloatermNew<CR>
nmap <leader>et :FloatermToggle<CR>
nmap <leader>ep :FloatermPrev<CR>
nmap <leader>en :FloatermNext<CR>

let g:floaterm_position = 'center'
let g:move_key_modifier = 'C'

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'relativepath', 'filetype', 'modified', 'readonly', 'cocstatus' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'cocstatus': 'coc#status',
      \ },
      \ }
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

nmap <leader>cf <Plug>CtrlSFCwordPath<CR>

nmap <Leader>ai :PhpactorImportClass<CR>
nmap <Leader>an :PhpactorClassNew<CR>
nmap <Leader>aci :PhpactorClassInflect<CR>
nmap <leader>ag :PhpactorGenerateAccessors<CR>
nmap <leader>at :call phpactor#Transform()<CR>
let g:ranger_map_keys = 0
map <leader>F :RangerNewTab<CR>
let g:Lf_UseMemoryCache = 0
autocmd CursorHold * silent call CocActionAsync('highlight')
