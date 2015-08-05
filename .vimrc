
augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

syntax on
filetype indent plugin on
imap jj <Esc>

" set cursorline
" highlight CursorLine ctermbg=Black

set ruler
set autoindent
set visualbell
set nu
