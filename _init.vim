set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set autoread
set noswapfile
set updatetime=250
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
" setlocal spell spelllang=ru
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
Plug 'APZelos/blamer.nvim'
Plug 'puremourning/vimspector'
Plug 'lyokha/vim-xkbswitch'
Plug 'jdsimcoe/abstract.vim'
Plug 'Badacadabra/vim-archery'
Plug 'dhruvasagar/vim-open-url'
Plug 'Xuyuanp/scrollbar.nvim'
Plug 'kevinhwang91/rnvimr'
Plug 'psliwka/vim-smoothie'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'pwntester/octo.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pineapplegiant/spaceduck'
Plug 'romgrk/barbar.nvim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'phaazon/hop.nvim'
Plug 'skywind3000/vim-quickui'
Plug 'tpope/vim-dispatch'
Plug 'rhysd/conflict-marker.vim'
Plug 'glepnir/spaceline.vim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'jbyuki/quickmath.nvim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'thibthib18/mongo-nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'VonHeikemen/searchbox.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'mfussenegger/nvim-jdtls'
Plug 'folke/twilight.nvim'
Plug 'udalov/kotlin-vim'
Plug 'NTBBloodbath/rest.nvim'
Plug 'nvim-lua/plenary.nvim'
call plug#end()

let laststatus=2

let g:indentLine_char = '⠂'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = "#D32F30"
let g:indentLine_color_tty_light = 7
let g:indentLine_color_dark = 1

let g:pdv_template_dir = $HOME ."/.vim/plugged/pdv/templates_snip"

"Using arrow key in insert mode 'alt+arrow_key' inoremap <A-h> <left>
" Move to lua
inoremap <A-j> <down>
inoremap <A-k> <up>
inoremap <A-l> <right>

" Move to lua
nmap <leader>gn <Plug>(GitGutterNextHunk)
nmap <leader>gp <Plug>(GitGutterPrevHunk)

nnoremap <leader>vr :source ~/.config/nvim/init.vim<CR>

let g:material_theme_style = 'darker'
" colorscheme spaceduck
colorscheme moonfly

" Move to lua
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

"move to lua
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let test#neovim#term_position = "topleft"

"move to lua
nmap <leader>tn :TestNearest<CR>
nmap <leader>tf :TestFile<CR>
nmap <leader>ts :TestSuite<CR>
nmap <leader>tl :TestLast<CR>
nmap <leader>tv :TestVisit<CR>

"move to lua
nmap <leader>e :FloatermNew<CR>
nmap <leader>et :FloatermToggle<CR>
nmap <leader>ep :FloatermPrev<CR>
nmap <leader>en :FloatermNext<CR>

"move to lua
let g:floaterm_position = 'center'
let g:move_key_modifier = 'C'

"move to lua
nmap <leader>cf <Plug>CtrlSFCwordPath<CR>

"move to lua
nmap <Leader>ai :PhpactorImportClass<CR>
nmap <Leader>an :PhpactorClassNew<CR>
nmap <Leader>am :PhpactorMoveFile<CR>
nmap <Leader>aci :PhpactorClassInflect<CR>
nmap <leader>ag :PhpactorGenerateAccessors<CR>
let g:Lf_UseMemoryCache = 0

set laststatus=2

let g:go_doc_popup_window = 1

au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" let g:blamer_enabled = 1
" let g:hardtime_default_on = 1
"move to lua
let g:vimspector_enable_mappings = 'HUMAN'

"move to lua
let g:doge_php_settings = {
\  'resolve_fqn': 0
\}
"move to lua
let g:vimspector_sign_priority = {
  \    'vimspectorBP':         999,
  \    'vimspectorBPCond':     999,
  \    'vimspectorBPDisabled': 999,
  \    'vimspectorPC':         999,
  \ }

"move to lua
let g:XkbSwitchEnabled = 1
let g:open_url_browser_default = "firefox-developer-edition"
"
"move to lua
nnoremap <silent> <leader>F :RnvimrToggle<CR>
nnoremap <silent> <leader><leader>w :HopWord<CR>
"move to lua
let g:rnvimr_enable_picker = 1
let g:rnvimr_draw_border = 1
let g:rnvimr_enable_bw = 1
let g:rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"'

let g:scrollbar_highlight = {
    \ 'head': 'Folded',
    \ 'body': 'Folded',
    \ 'tail': 'Folded',
    \ }
"let g:minimap_auto_start = 1
nnoremenu WinBar.■\ Stop :call vimspector#Stop()<CR>
nnoremenu WinBar.▶\ Cont :call vimspector#Continue()<CR>
nnoremenu WinBar.▷\ Pause :call vimspector#Pause()<CR>
nnoremenu WinBar.↷\ Next :call vimspector#StepOver()<CR>
nnoremenu WinBar.→\ Step :call vimspector#StepInto()<CR>
nnoremenu WinBar.←\ Out :call vimspector#StepOut()<CR>
nnoremenu WinBar.⟲: :call vimspector#Restart()<CR>
nnoremenu WinBar.✕ :call vimspector#Reset()<CR>
let g:spaceline_seperate_style = 'none'

let bufferline = get(g:, 'bufferline', {})
let bufferline.closable = v:false
let bufferline.auto_hide = v:true

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

nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
nnoremap <silent>    <A-p> :BufferPin<CR>
nnoremap <silent>    <A-c> :BufferClose<CR>
nnoremap <silent> <C-s>    :BufferPick<CR>
nnoremap <silent> <space>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>
xnoremap <leader>s :SearchBoxIncSearch visual_mode=true<CR>
