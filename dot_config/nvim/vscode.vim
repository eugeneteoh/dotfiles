" Use system clipboard
set clipboard=unnamedplus

" Indent without leaving visual mode
vnoremap > >gv
vnoremap < <gv

" Delete without copying to register
nnoremap d "_d
vnoremap d "_