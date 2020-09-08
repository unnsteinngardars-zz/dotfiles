inoremap jk <esc>
inoremap <esc> <nop>

" Enter find and replace for current word
nnoremap <leader>o :%s/<C-r><C-w>//g<Left><Left>
nnoremap <leader>O :%s/<C-r><C-w>//gc<Left><Left><Left>

" turn terminal to normal mode on escape
tnoremap <Esc> <C-\><C-n>

" Open Vim config files to edit {{{
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>evo :vsplit $HOME/.config/nvim/options.vim<cr>
nnoremap <leader>eva :vsplit $HOME/.config/nvim/autocommands.vim<cr>
nnoremap <leader>evm :vsplit $HOME/.config/nvim/mappings.vim<cr>
nnoremap <leader>evp :vsplit $HOME/.config/nvim/plugins.vim<cr>
nnoremap <leader>evd :vsplit $HOME/.config/nvim/dependencies.md<cr>
nnoremap <leader>epc :vsplit $HOME/.config/nvim/pluggin_config/coc.vim<cr>
nnoremap <leader>epf :vsplit $HOME/.config/nvim/pluggin_config/fzf.vim<cr>
nnoremap <leader>epl :vsplit $HOME/.config/nvim/pluggin_config/lightline.vim<cr>
nnoremap <leader>epn :vsplit $HOME/.config/nvim/pluggin_config/nerd_tree.vim<cr>
" Source the vim file after it has been saved
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}

" Alt+left/right to go to beginning/end of current word {{{
inoremap <M-Left> <esc>bi
inoremap <M-h> <esc>bi
inoremap <M-Right> <esc>ea
inoremap <M-l> <esc>ea
" }}}

" Move current line up {{{
inoremap <M-Up> <C-O>:call MoveLineUp()<CR>
function! MoveLineUp()
	let l:curr_pos = nvim_win_get_cursor(0)
	let l:new_pos = [l:curr_pos[0] - 1, l:curr_pos[1]]
	execute "normal! \"yyyddkP"
	execute "call nvim_win_set_cursor(0, l:new_pos)"
endfunction
"}}}

" Move current line down {{{
inoremap <M-Down> <C-O>:call MoveLineDown()<CR>
function! MoveLineDown()
	let l:curr_pos = nvim_win_get_cursor(0)
	let l:new_pos = [l:curr_pos[0] + 1, l:curr_pos[1]]
	execute "normal! \"yyyddp"
	execute "call nvim_win_set_cursor(0, l:new_pos)"
endfunction
" }}}

" Open terminal on C-n {{{
function! OpenTerminal()
	split term://zsh
	resize 10
endfunction

nnoremap <c-n> :call OpenTerminal()<CR>
" }}}

" use ctrl+hjkl to move between split/vsplit panels {{{
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" }}}

" Shift+alt+hjkl to resize pane vertically/horizontally  {{{
nnoremap Ó :vertical resize +5<CR>
nnoremap Ò :vertical resize -5<CR>
nnoremap Ô :resize +5<CR>
nnoremap  :resize -5<CR>
" }}}
