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
Plug 'tpope/vim-fugitive'
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
Plug 'tobyS/vmustache'
Plug 'SirVer/ultisnips'
Plug 'rust-lang/rust.vim'
Plug 'roxma/nvim-yarp'
Plug 'janko/vim-test'
Plug 'xolox/vim-misc'
Plug 'diepm/vim-rest-console'
Plug 'tpope/vim-abolish'
Plug 'neoclide/coc.nvim'
Plug 'kaicataldo/material.vim', {'branch': 'main'}
Plug 'swekaj/php-foldexpr.vim'
Plug 'tyru/open-browser.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'voldikss/vim-floaterm'
Plug 'matze/vim-move'
Plug 'aperezdc/vim-template'
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}
Plug 'kkoomen/vim-doge'
Plug 'rbgrouleff/bclose.vim'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'APZelos/blamer.nvim'
Plug 'puremourning/vimspector'
Plug 'lyokha/vim-xkbswitch'
Plug 'jdsimcoe/abstract.vim'
Plug 'Badacadabra/vim-archery'
Plug 'dhruvasagar/vim-open-url'
Plug 'Xuyuanp/scrollbar.nvim'
Plug 'kevinhwang91/rnvimr'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
call plug#end()

let laststatus=2

let g:indentLine_char = '⠂'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = "#D32F30"
let g:indentLine_color_tty_light = 7
let g:indentLine_color_dark = 1

let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"

"Using arrow key in insert mode 'alt+arrow_key' inoremap <A-h> <left>
inoremap <A-j> <down>
inoremap <A-k> <up>
inoremap <A-l> <right>

nmap <leader>gn <Plug>(GitGutterNextHunk)
nmap <leader>gp <Plug>(GitGutterPrevHunk)

nnoremap <leader>vr :source ~/.config/nvim/init.vim<CR>

" c-j c-k for moving in snippet
let g:UltiSnipsExpandTrigger      = "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger   = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger  = "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

let g:ruby_host_prog = '/home/alex/.gem/ruby/2.5.0/bin/neovim-ruby-host'

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
nmap <silent>cr <Plug>(coc-rename)
nmap ce <Plug>(coc-refactor)
nnoremap <silent> <space>a  :CocAction<cr>

let g:material_theme_style = 'darker'
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

nmap <leader>cf <Plug>CtrlSFCwordPath<CR>

nmap <Leader>ai :PhpactorImportClass<CR>
nmap <Leader>an :PhpactorClassNew<CR>
nmap <Leader>am :PhpactorMoveFile<CR>
nmap <Leader>aci :PhpactorClassInflect<CR>
nmap <leader>ag :PhpactorGenerateAccessors<CR>
nmap <leader>at :call phpactor#Transform()<CR>
let g:Lf_UseMemoryCache = 0
autocmd CursorHold * silent call CocActionAsync('highlight')

set laststatus=2
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='bubblegum'
let g:airline_theme = 'archery'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#coc#enabled = 1

let g:go_doc_popup_window = 1

au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" let g:blamer_enabled = 1
" let g:hardtime_default_on = 1
let g:vimspector_enable_mappings = 'HUMAN'

let g:doge_php_settings = {
\  'resolve_fqn': 0
\}
let g:vimspector_sign_priority = {
  \    'vimspectorBP':         999,
  \    'vimspectorBPCond':     999,
  \    'vimspectorBPDisabled': 999,
  \    'vimspectorPC':         999,
  \ }

let g:XkbSwitchEnabled = 1
let g:open_url_browser_default = "firefox-developer-edition"
nnoremap <silent> <leader>F :RnvimrToggle<CR>
let g:rnvimr_enable_picker = 1
let g:rnvimr_draw_border = 1
let g:rnvimr_enable_bw = 1
let g:rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"'
augroup ScrollbarInit
  autocmd!
  autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,FocusLost,QuitPre             * silent! lua require('scrollbar').clear()
augroup end

let g:scrollbar_highlight = {
    \ 'head': 'Folded',
    \ 'body': 'Folded',
    \ 'tail': 'Folded',
    \ }
"let g:minimap_auto_start = 1
