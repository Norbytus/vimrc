let mapleader = "\<Space>"

"Using arrow key in insert mode 'alt+arrow_key'
inoremap <A-h> <left>
inoremap <A-j> <down>
inoremap <A-k> <up>
inoremap <A-l> <right>

nmap <leader>gn <Plug>GitGutterNextHunk
nmap <leader>gp <Plug>GitGutterPrevHunk

nnoremap <leader>p :call pdv#DocumentWithSnip()<CR>

nnoremap <leader>tb :Tagbar<CR>

nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>

nnoremap <leader>gn :GitGutterNextHunk<CR>
nnoremap <leader>gp :GitGutterNextHunk<CR>
