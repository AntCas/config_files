" basic preferences
set ts=4 sw=4 et laststatus=2 number title hlsearch ruler mouse=a
color desert
syntax on

" Change background color after col 80
highlight OverLength ctermbg=black guibg=#592929
match OverLength /\%81v.\+/
