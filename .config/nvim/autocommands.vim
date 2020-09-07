" Auto commands

" Nerd Tree {{{
augroup nerd_tree
	autocmd!
	" close vim when NERDTree is the only thing open
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END
"}}}
 
" On a new system, manually run the :setlocal foldmethod=marker command once
" Vimscript file settings {{{
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" CoC statusline update {{{
augroup coc_statusline_update
  	autocmd!
	autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
augroup END
" }}}
