syntax on

" who in the world wants case-sensitive search?
set ignorecase

" highlight search results
set hlsearch

" i don't know what this does
set ruler

" display file path in gutter
set ls=2

" json syntax highlighting, by tricking vim into thinking it's javascript
autocmd BufNewFile,BufRead *.json set ft=javascript

" make pathogen work
execute pathogen#infect()
filetype plugin indent on

" set color scheme
color slate
