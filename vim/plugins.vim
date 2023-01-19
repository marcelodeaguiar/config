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

    " Nerdtree file explorer
    Plug 'preservim/nerdtree'

    " NERDtree Git integration - Must be after NERDtree
    Plug 'Xuyuanp/nerdtree-git-plugin'    

    " Icon color
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    
    "Color scheme
    Plug 'morhetz/gruvbox'

    " Swift syntax
    Plug 'vim-syntastic/syntastic'
    Plug 'keith/swift.vim'

    " Fastlane syntax
    Plug 'https://github.com/milch/vim-fastlane'

    " Status line
    Plug 'vim-airline/vim-airline'
    
    " Fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Load icons for folders/files - Must be the last one.
    Plug 'ryanoasis/vim-devicons'
 
    " Code Completion
    Plug 'neoclide/coc.nvim', { 'branch': 'release' } " Adds code completion

    " Adds status column for git status on files (added/modigied/etc)
    Plug 'airblade/vim-gitgutter' 

    " Git helpers
    Plug 'tpope/vim-fugitive'

    " For quick jumps with f or F
  "  Plug 'unblevable/quick-scope'

call plug#end()
