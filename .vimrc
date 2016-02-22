"Phil Rees - vim config
"Colour {{{
colorscheme Chasing_Logic "colour scheme
syntax on  "enable syntax processing

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" }}}

"Spaces & Tabs {{{
set nocompatible

set tabstop=2 "number of visual spaces per TAB char
set softtabstop=4 "number of spaces for a tab when editting
set expandtab "convert tab char to spaces
filetype on "load filetype specific indent files
filetype indent on
filetype plugin on
" }}}

"UI Layout {{{
"set file specific settings for this file only, used to fold/format
set modeline
set modelines=1

set number "shows line number
set showcmd "shows recent command in bottom bar
" }}}

"Search {{{
set wildmenu "visual autocomplete for command menu
set showmatch "highlights matching for {[(

set incsearch "search as characters are typed
set hlsearch "highlight matches

"turn off search highlighting
nnoremap <leader><space> :nohlsearch<CR>
" }}}

" Folding {{{
set foldenable "enables folding

set foldlevelstart=5 "If it is set to 0, all folds will be closed. Setting it to 99 would guarantee folds are always open. So, setting it to 10 here ensures that only very nested blocks of code are folded when opening a buffer
"can also set foldnestmax to limit the total number of folds

" }}}

"Custom Maps {{{

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" highlight last inserted text
nnoremap gV `[v`]

"writes a file that requires sudo to modify
cnoremap sudow w !sudo tee % >/dev/null

"nerdtree map
map :o :NERDTree<CR>

" shorter switching between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let mapleader = ","
" }}}

execute pathogen#infect()

"folds this file by markers and sets everything to be folded by default
" vim:foldmethod=marker:foldlevel=0
