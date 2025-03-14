" Use system clipboard
set clipboard=unnamedplus

" Indent without leaving visual mode
vnoremap > >gv
vnoremap < <gv

" Remap delete commands to avoid copying deleted text
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d
nnoremap x "_x
nnoremap X "_X
