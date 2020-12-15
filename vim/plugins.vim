" Install plug.vim plugin manager
if empty(glob('~/config/vim/autoload/plug.vim'))
  silent !curl -fLo ~/config/vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Points runtime path to list plug.vim scripts
set rtp+=~/config/vim

" All plugins will be saved to this dir
call plug#begin('~/config/vim/plugged')

    "Color scheme
    Plug 'morhetz/gruvbox'

    " Swift syntax
    Plug 'vim-syntastic/syntastic'
    Plug 'keith/swift.vim'
    
    Plug 'ap/vim-buftabline' " List buffers as tabs in vim
    Plug 'airblade/vim-gitgutter' " Adds status column for git status on files (added/modigied/etc)
    Plug 'neoclide/coc.nvim' " Adds code completion

    " Fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " For quick jumps with f or F
    Plug 'unblevable/quick-scope'
    
call plug#end()
