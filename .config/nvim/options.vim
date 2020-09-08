:set number
:highlight lineNr ctermfg=white
:set numberwidth=3
:let mapleader = "-"
:let maplocalleader = "\\"
:set encoding=utf8

" FZF
":let $FZF_DEFAULT_COMMAND = 'ag -g ""'
:let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.5, 'yoffset': 0.1, 'border': 'rounded'}}

:let g:NERDTreeShowHidden = 1
:let g:NERDTreeMinimalUI = 1
:let g:NERDTreeIgnore = []
:let g:NERDTreeStatusline = ''

" Options for terminal
:set splitright
:set splitbelow

" Themes and syntax
if (has("termguicolors"))
 :set termguicolors
endif
:syntax enable
:colorscheme "dracula"

" Coc
:let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
:let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }
:let g:fzf_preview_command = 'bat --color=always --plain {-1}'
:let g:fzf_preview_use_dev_icons = 1

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  :set signcolumn=number
else
  :set signcolumn=yes
endif
