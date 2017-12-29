set hidden

let g:LanguageClient_serverCommands = {
    \ }

nnoremap <leader> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <leader> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
