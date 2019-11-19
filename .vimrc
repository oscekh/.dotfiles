"\\\\\\\\\\\\\\\\\\
"//////////////////
"\\\\\\\\\\\\\\\\\\
"//////////////////

" misc
set so=10
set ruler
set showmatch

" searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" theme
syntax enable
set background=dark
colorscheme hybrid

" indentation
set shiftwidth=4
set tabstop=4
set expandtab

" line breaking/wrapping
set lbr
set tw=400

" numbering
set number
set relativenumber

" autoclose-ish
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>

" run selected rows in visual mode as python
xnoremap <F9> :w !python3<CR>

