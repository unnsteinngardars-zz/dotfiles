" On a new system, manually run the :setlocal foldmethod=marker command once
" Vimscript file settings {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
