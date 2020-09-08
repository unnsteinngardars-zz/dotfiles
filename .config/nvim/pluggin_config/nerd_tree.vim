" Configuration for Nerd Tree

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

nnoremap <C-o> :NERDTreeToggle<CR>

" Nerd Tree {{{
augroup nerd_tree
	autocmd!
	" close vim when NERDTree is the only thing open
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END
"}}}
