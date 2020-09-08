" Plugins
call plug#begin()
" File and Folder hierarchy and dev icons
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
" Fuzzy finder to search for files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Changes the working directory to the project root when opening a file or
" directory
Plug 'airblade/vim-rooter'
" Shows git diff
Plug 'airblade/vim-gitgutter'
" Intellisense engine
" To install auto pairs, run :CocInstall coc-pairs
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" A status line
Plug 'itchyny/lightline.vim'
" a commenter duh
Plug 'preservim/nerdcommenter'
Plug 'frazrepo/vim-rainbow'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'tpope/vim-fugitive'
" Language pack collection
Plug 'sheerun/vim-polyglot'
" Theme
Plug 'dracula/vim', {'as': 'dracula'}
" vim snippets
Plug 'honza/vim-snippets'
call plug#end()

