:syntax on
:set number
:highlight lineNr ctermfg=white
:set numberwidth=3
:let mapleader = "-"
:let maplocalleader = "\\"
:set encoding=utf8

" FZF
:let $FZF_DEFAULT_COMMAND = 'ag -g ""'
:let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.5, 'yoffset': 0.1, 'border': 'rounded'}}

:let g:NERDTreeShowHidden = 1
:let g:NERDTreeMinimalUI = 1
:let g:NERDTreeIgnore = []
:let g:NERDTreeStatusline = ''

" Options for terminal
:set splitright
:set splitbelow

" Ale
:let g:ale_fixers = {
\   '*': ['trim_whitespace'],
\}
:let g:ale_fix_on_save = 1
:let g:ale_disable_lsp = 1
:let g:ale_sign_error = '❌'
:let g:ale_sign_warning = '⚠️'

" Lightline Ale
let g:lightline = {}
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }
let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ]] }




