let g:pdv_template_dir = $HOME ."/storage/external-1/nvim/plugged/pdv/templates"
autocmd FileType php inoremap <buffer> <C-p> <ESC> :call pdv#DocumentCurrentLine()<CR>i
autocmd FileType php nnoremap <buffer> <C-p> :call pdv#DocumentCurrentLine()<CR>
autocmd FileType php vnoremap <buffer> <C-p> :call pdv#DocumentCurrentLine()<CR>
