" leader stuff

let mapleader = ","

map <leader>l <C-^>
map <leader>b :FufBuffer<CR>
map <leader>f :NERDTreeFind<CR>

" autosave if i switch buffers
set autowriteall
au FocusLost * silent! wa

" pathogen stuff
execute pathogen#infect()
syntax on
filetype plugin indent on

"misc
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=vendor/bundle/**
set wildignore+=vendor/ruby/**
set wildignore+=steak/**
set wildignore+=/tmp/**
set wildignore+=/log/**
set noswapfile 
set undofile "persistent undo
set ignorecase  "ignore case in searches
set incsearch "incremental search on / searches
autocmd BufRead,BufNewFile *.html.erb set filetype=eruby

"allows you to paste the same thing twice
"noremap p pgvy 

" switch between relative and absolute line numbers on movement
au FocusLost * :set number
au FocusGained * :set relativenumber



" Set encoding
set encoding=utf-8
"
" " Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set backspace=indent,eol,start " make backspace work like most apps aka backspace onto previous line



" stuff related to filnemae command line completion
set wildmenu
set wildmode=longest,list


" show filename ins tatus bar
set laststatus=2
set statusline=%f "tail of the filename


" Refreshes commandt regularuly
augroup CommandTExtension
  autocmd!
  autocmd FocusGained * CommandTFlush
  autocmd BufWritePost * CommandTFlush
augroup END

" supposedly makes paste work easier
"
"
" spell check on markdown files
autocmd BufNewFile,BufRead *.markdown setlocal spell spelllang=en_us
autocmd BufNewFile,BufRead *.md setlocal spell spelllang=en_us
"
