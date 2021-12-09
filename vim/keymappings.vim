" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" fzf keybindings
map <C-f> :Files<CR>
nnoremap <C-g> :Rg<CR>
map <leader>f :BLines<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>
