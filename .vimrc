au Bufenter *.hs compiler ghc
syntax on
filetype plugin on

set t_Co=256
colorscheme molokai
let g:molokai_original=1


set tabstop=4
set expandtab
set smartindent
set shiftwidth=4

map <leader>f :FufFile<CR>
map <leader>b :BufExplorer<CR>

map <leader><leader> :b#<CR>

set foldmethod=indent
set foldlevel=99

set hlsearch

set backupdir=~/tmp
set swapfile
set dir=~/tmp

let g:neocomplcache_enable_at_startup = 1

