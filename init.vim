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
colorscheme nova
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

source ~/git-repos/new_vim/vimrc/plugins.vim

source ~/git-repos/new_vim/vimrc/plugin_config/nerd.vim
source ~/git-repos/new_vim/vimrc/plugin_config/air_line.vim
source ~/git-repos/new_vim/vimrc/plugin_config/ident_line.vim
source ~/git-repos/new_vim/vimrc/plugin_config/deoplete.vim
source ~/git-repos/new_vim/vimrc/plugin_config/lsp.vim
source ~/git-repos/new_vim/vimrc/plugin_config/utilsnips.vim

source ~/git-repos/new_vim/vimrc/php/lsp.vim
source ~/git-repos/new_vim/vimrc/php/phpqa.vim

source ~/git-repos/new_vim/vimrc/key_binding.vim


