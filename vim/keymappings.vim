" Reload .vimrc
nnoremap cfr :source $MYVIMRC<CR>
nnoremap cfe :e $MYVIMRC<CR>

" Map leader key to space
let mapleader = " "

" Close all buffers except the current
map <leader>q :%bd\|e#\|bd#<cr>

" Close current buffer :bd
map <leader>x :bd<cr>

" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
