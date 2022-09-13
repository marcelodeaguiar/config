syntax enable

set term=xterm-256color

" Set default copy/paste to system clipboard
:set clipboard=unnamed

" Set all splits to prefer bottom
set splitbelow

" Invisibles chars
:set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»

" Enables true colors on terminals
set termguicolors

" Sets tabs to spaces
filetype plugin indent on
set tabstop=4    " show existing tabs with 4 spaces
set shiftwidth=4 " When using '>' use spaces instead of tabs
set expandtab    " On pressing tab insert 4 spaces

set number         " Show line numbers
set relativenumber " Enables relative line numbers

set showmatch  " highlight matching [{()}]

" SEARCH
set incsearch " Search as chars are typed
augroup vimrc-incsearch-highlight " Sets to highlight search when enter/leaving cmd mode.
  autocmd!
  autocmd CmdlineEnter /,\? :set hlsearch
  autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

" SPELLCHECK
set spelllang=en_us,pt_br

set cursorline " Highlight current cursor line

set cc=130 " Vertical rule indicator

set scrolloff=5 " keep 5 lines above and below the cursor

set noswapfile " disable file swap creation

set nowrap " disable wraplines

set wildmenu " show menu for completions

set complete+=kspell

" Set timeout for waiting second key
set timeoutlen=180

set backspace=indent,eol,start  " more powerful backspacing

" Prevent vim from requesting to save unchanged things in buffers
set hidden

" Creates a temp buffer to work on
function! Scratch()
    split
    noswapfile hide enew
    setlocal buftype=nofile
    setlocal bufhidden=hide
    "setlocal nobuflisted
    "lcd ~
    file scratch
endfunction
command! -bar -nargs=* Btemp call Scratch()
