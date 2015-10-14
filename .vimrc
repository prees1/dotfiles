"Phil Rees - vim config
"Colour {{{
colorscheme badwolf "colour scheme
syntax enable  "enable syntax processing
" }}}

"Spaces & Tabs {{{
set tabstop=4 "number of visual spaces per TAB char
set softtabstop=4 "number of spaces for a tab when editting
set expandtab "convert tab char to spaces
filetype indent on "load filetype specific indent files
" }}}

"UI Layout {{{
"set file specific settings for this file only, used to fold/format
set modeline
set modelines=1

set number "shows line number
set showcmd "shows recent command in bottom bar
set cursorline "highlights current line
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

" }}}

"folds this file by markers and sets everything to be folded by default
" vim:foldmethod=marker:foldlevel=0
