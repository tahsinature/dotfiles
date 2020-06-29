let g:pdv_template_dir = $HOME ."/storage/external-1/nvim/plugged/pdv/templates_snip"
autocmd FileType php inoremap <buffer> <C-p> <ESC> :call pdv#DocumentWithSnip()<CR>i
autocmd FileType php nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
autocmd FileType php vnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>
