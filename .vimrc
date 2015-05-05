" Turn syntax highlighting on
syn on

" Set tabspace, indentation and other
" simple editor properties
set ts=4
set smartindent
set shiftwidth=4
set ruler
set showmatch
set wrap
set expandtab
set smarttab
set number

" Restrict text width to 80
set textwidth=80

" Use UTF-8 encoding for files
set encoding=utf-8

" Turn on 'visual bell'
set visualbell
set noerrorbells

" Automatically show matching brackets
set showmatch

" Make that backspace key work the way it should
set backspace=indent,eol,start
set background=dark

set mouse=a

" Autocompletion for menu items
set wildmenu
set wildmode=list:longest

" Highlight search things
set hlsearch
" Ignore case when searching
set ignorecase
set smartcase

" Make search act like search in modern browsers
set incsearch

" Don't redraw while executing macros
set nolazyredraw

" Shows what cmd is being typed
set showcmd

" Watch for file changes
set autoread

" Highlight anything > 80
match ErrorMsg '\%>80v.\+'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax highlighting for specific file types
filetype plugin indent on

augroup filetypedetect
    au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
    au BufRead,BufNewFile *.json set filetype=json
    au BufRead,BufNewFile *.go set filetype=go syntax=go
    au BufRead,BufNewFile *.proto set filetype=proto syntax=proto
    au BufRead,BufNewFile *.hql set filetype=hive syntax=hive
    au BufRead,BufNewFile *.avsc set filetype=json
    au BufRead,BufNewFile *.scala set filetype=scala syntax=scala
    au BufRead,BufNewFile *.gradle setf groovy
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map ,z :s/^/\/\/<TAB>/<CR>
map ,a :s/\/\/<TAB>/<CR>

map <F2> :NERDTreeToggle<CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Indent/unindent highlighted block
" (and maintain highlight)
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Keep hjkl while using Dvorak layout
noremap d h
noremap h gj
noremap t gk
noremap n l
noremap E D
noremap s :
noremap b n
noremap B N

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Compile .tex file on save using provided
" Makefile
autocmd BufWritePost,FileWritePost *.tex !make
