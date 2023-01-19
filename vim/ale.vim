au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsx setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ — parser\ typescript

let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_fixers = { 'javascript': ['eslint'], 'typescript': ['prettier', 'tslint'], 'scss': ['prettier'], 'html': ['prettier'], 'reason': ['refmt'] }

set omnifunc=ale#completion#OmniFunc
