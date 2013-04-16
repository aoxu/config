".vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"myself
set cino=:0g0t0

"For ctags, then it can find the 'tags' file even not in current directory
set tags=tags;/

"Get out of VI's compatible mode..
set nocompatible

"Sets how many lines of history VIM har to remember
set history=400

"Set to auto read when a file is changed from the outside
set autoread

"backgroud
set background=dark

"""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""
"Enable syntax highlight
syntax enable

"set colorscheme
colorscheme elflord
"endif

"""""""""""""""""""""""""""""""""""""
" VIM userinterface
"""""""""""""""""""""""""""""""""""""
"Set 7 lines to the curors away from the border- when moving vertical..
set so=7

"Turn on WiLd menu
set wildmenu

"Always show current position
set ruler

"The commandbar is 2 high
set cmdheight=2

"Show line number
"set nu

"Set backspace
set backspace=eol,start,indent

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"show matching bracets
set showmatch

"How many tenths of a second to blink
set mat=2

"Highlight search things
set hlsearch
"imediately show the search result
set is

"""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""
"Enable folding, I find it very useful
"set nofen
"set fdl=0


"""""""""""""""""""""""""""""""""""""
" Text options
"""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set ambiwidth=double
set smarttab

"Set Tab=4 spaces
set ts=4
set lbr
set tw=500
set selection=inclusive

""""""""""""""""""""""""""""""
" Indent
""""""""""""""""""""""""""""""
"Auto indent
set ai
"Set auto indent width = 4 spaces
set sw=4

"Smart indet
set si

"C-style indenting
set cindent "usage: select codes, press '=' key, the codes will autoindenting

"Wrap lines
set wrap

"
let mapleader =','


"Encoding settings
if has("multi_byte")
    " Set fileencoding priority
    set fileencodings=utf-8,gbk,cp936,latin1
    set encoding=utf-8
    set termencoding=utf-8
    set fileencoding=utf-8
else
    echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
endif


"""""""""""""""""""""""""""""""""""""
"plugins

"""""""""""""""""""""""""""""""""""""
" Tlist
if &diff
let Tlist_Auto_Open=0 "don't auto pen when compare two files
else
let Tlist_Auto_Open=0 "auto pen Tlist when open a file
endif

"set taglist window in right, delete the following line if you don't like
"let Tlist_Use_Right_Window=1
let Tlist_Use_Left_Window=1
let Tlist_Auto_Update=1
let Tlist_File_Fold_Auto_Close=1
"auto close Tlist when exiting file.
let Tlist_Exit_OnlyWindow = 1 

nmap <F7> :copen<CR>
nmap <F6> :cclose<CR>

" search ignore case
set ic

"Paste toggle - when pasting something in, don't indent.
set pastetoggle=<F3>
