:inoremap jk <esc>
:inoremap <esc> <nop>

" Open Vim config files to edit
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>evo :vsplit $HOME/.config/nvim/options.vim<cr>
:nnoremap <leader>eva :vsplit $HOME/.config/nvim/autocommands.vim<cr>
:nnoremap <leader>evm :vsplit $HOME/.config/nvim/mappings.vim<cr>
:nnoremap <leader>evp :vsplit $HOME/.config/nvim/plugins.vim<cr>
:nnoremap <leader>evd :vsplit $HOME/.config/nvim/dependencies.md<cr>
" Source the vim file after it has been saved
:nnoremap <leader>sv :source $MYVIMRC<cr>

:nnoremap <C-o> :NERDTreeToggle<CR>

" search for files
:nnoremap <C-f> :Files<CR>

" Enter find and replace for current word
:nnoremap <Leader>o :%s/<C-r><C-w>//g<Left><Left>
:nnoremap <Leader>O :%s/<C-r><C-w>//gc<Left><Left><Left>

" turn terminal to normal mode on escape
:tnoremap <Esc> <C-\><C-n>

:nmap <silent> gd <Plug>(coc-definition)
:nmap <silent> gy <Plug>(coc-type-definition)
:nmap <silent> gi <Plug>(coc-implementation)
:nmap <silent> gr <Plug>(coc-references)

" Alt+left/right to go to beginning/end of current word {{{
:inoremap <M-Left> <esc>bi
:inoremap <M-h> <esc>bi
:inoremap <M-Right> <esc>ea
:inoremap <M-l> <esc>ea
" }}}

" Shift+left/right to highlight to beginning/end of current word {{{
:inoremap <S-Left> <esc>vb
:inoremap <S-Right> <esc>lve
" }}}

" Move current line up {{{
:inoremap <M-Up> <C-O>:call MoveLineUp()<CR>
function! MoveLineUp()
	let l:curr_pos = nvim_win_get_cursor(0)
	let l:new_pos = [l:curr_pos[0] - 1, l:curr_pos[1]]
	execute "normal! \"yyyddkP"
	execute "call nvim_win_set_cursor(0, l:new_pos)"
endfunction
"}}}

" Move current line down {{{
:inoremap <M-Down> <C-O>:call MoveLineDown()<CR>
function! MoveLineDown()
	let l:curr_pos = nvim_win_get_cursor(0)
	let l:new_pos = [l:curr_pos[0] + 1, l:curr_pos[1]]
	execute "normal! \"yyyddp"
	execute "call nvim_win_set_cursor(0, l:new_pos)"
endfunction
" }}}

" Show documentation by pressing K in normal mode {{{
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

:nnoremap <silent> K :call <SID>show_documentation()<CR>
" }}}

" Open terminal on C-n {{{
function! OpenTerminal()
	split term://zsh
	resize 10
endfunction

:nnoremap <c-n> :call OpenTerminal()<CR>
" }}}

" use alt+hjkl to move between split/vsplit panels {{{
:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-j> <C-\><C-n><C-w>j
:tnoremap <C-k> <C-\><C-n><C-w>k
:tnoremap <C-l> <C-\><C-n><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l
" }}}
