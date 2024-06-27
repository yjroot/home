" Color
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set bg=dark


" Highlight search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch
"nnoremap <esc> :let @/ = ""<CR>


" Command tab completion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmode=longest,list,full
"set wildmenu


" Ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags +=./tags,../tags,../../tags,../../../tags,/usr/src/linux/tags,/usr/include/tags


" Editor
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4
"set expandtab

set number
set colorcolumn=80

syntax on

" Clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set clipboard=unnamedplus


" Vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

call plug#end()
