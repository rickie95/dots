syntax on

set title
set bg=light
set ruler			" Doesn't show the row/col thing on stat bar
set number			" Shows line number on the left
set encoding=utf-8

set wildmode=longest,list,full 	" Enables autocompletion

" Status bar
let g:currentmode={
	\ 'n' : 'NORMAL ',
	\ 'v' : 'VISUAL ',
	\ 'V' : 'V-LINE ',
	\ '' : 'V-BLOCK ',
	\ 'i' : 'INSERT ',
	\ 'R' : 'REPLACE ',
	\ 'Rv': 'V-REPLACE ',
	\ 'c' : 'COMMAND',
	\}
set statusline=
set statusline+=\ %{toupper(g:currentmode[mode()])}	" current mode
set statusline+=%-7([%{&fileformat}]%) 			" file type
set statusline+=%F					" file path
set statusline+=\ %m					" modified flag [+]
set statusline+=%=\ row:%l/%L\ (%03p%%)			" current line / total (%)


" Enables filetype, adds completion for HTML/CSS/C++/PYTHON
filetype plugin on
au FileType html setl ofu=htmlComplete#CompleteTags
au FileType c,cpp setl ofu=ccomplete#CompleteCpp
au FileType css setl ofu=csscomplete#CompleteCSS
au FileType py setl ofu=pythoncomplete#CompletePython
