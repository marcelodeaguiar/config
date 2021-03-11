syntax enable

" Invisibles chars
:set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
:set list

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
set hlsearch  " Highlight search matches

" SPELLCHECK
set spelllang=en_us,pt_br

set cursorline " Highlight current cursor line

set cc=130 " Vertical rule indicator

set scrolloff=5 " keep 5 lines above and below the cursor

set noswapfile " disable file swap creation

set nowrap " disable wraplines

set wildmenu " show menu for completions

set complete+=kspell
