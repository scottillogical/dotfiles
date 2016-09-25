" Vim misc defaults
set nocompatible           " vim behaves better not compatible with vi
set noswapfile     	   " they are annoying
filetype on 
filetype plugin indent on  " indent
set ignorecase             " ignore case in searches
set undofile               " persistent undo
set encoding=utf-8
set backspace=indent,eol,start " make backspace work like most apps aka backspace onto previous line
set wildmode=longest,list,full " better expansion
set wildmenu
set incsearch "incremental search on / searches

scriptencoding utf-8
set encoding=utf-8

" :E fix
command E Explore

" Tell vim where it put stuff
set backupdir=/tmp
set directory=/tmp
set dir=/tmp
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set dir=~/.vim/tmp
set undodir=~/.vim/tmp


" Status bar customization
set laststatus=2            
set statusline=%f "tail of the filenamj
set statusline+=%l

" Text Formatting
syntax on
set autoindent             " automatic indent new lines
set smartindent            " be smart about it
set autowrite              "
inoremap # X<BS>#
set wrap                 " wrap lines
set softtabstop=2          " yep, two
set shiftwidth=2           " ..
set tabstop=2
set expandtab              " expand tabs to spaces
set nosmarttab             " fuck tabs
set formatoptions+=n       " support for numbered/bullet lists
set cc=+1                  " highlight 80 characters long
set virtualedit=block      " allow virtual edit in visual block ..
set listchars=trail:.      " highlight trailing whitespace
autocmd FileType c,cpp,java,php,ruby,elixir autocmd BufWritePre <buffer> :%s/\s\+$//e


" Custom file type settings
autocmd FileType javascript setlocal textwidth=80
autocmd FileType coffee setlocal textwidth=80
autocmd FileType ruby setlocal textwidth=80
autocmd BufRead,BufNewFile *.html.erb set filetype=eruby
autocmd BufRead *.coffee set textwidth=100

" Leader maps
let mapleader = ","
map <leader>b :FufBuffer<CR>
map <leader>f :NERDTreeFind<CR>
map <leader>l <C-^>
map <leader>n :NERDTreeToggle<CR>
"#nmap <silent> <leader>g :TestVisit<CR>
map <leader>o :TlistToggle<CR>
map <leader>m @:<CR> " repeat last command
map <leader>p :CtrlP
noremap <leader>r :GoRun %<CR> "  go run current file
map <leader>t :CtrlP
map <silent> <leader>t :! !!<CR>

"autocmd FileType go nmap <leader>b  <Plug>(go-build)
"autocmd FileType go nmap <leader>r  <Plug>(go-run) " go run entire package
 

"Run tests

" Wildignore stuff so that we don't have to search it
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=vendor/bundle/**
set wildignore+=vendor/ruby/**
set wildignore+=test/coverage/**
set wildignore+=bundle
set wildignore+=steak/**
set wildignore+=bundle/**
set wildignore+=dist/**
set wildignore+=/tmp/**
set wildignore+=/log/**
set wildignore+=app/nls/**
set wildignore+=node_modules/**
set wildignore+=vendor/bower/**
set wildignore+=doc/**
set wildignore+=catalog/**

" Misc
execute pathogen#infect()
"cabbrev E Explore " not sure if this is still necessary

" Use ag instead of ack if avail
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Solarized
syntax enable
set background=dark
colorscheme solarized
"colorscheme atom-dark-256


" update ctags always
let g:easytags_async = 1
set tags=./tags;/,tags;/
let g:solarized_termtrans=1
let g:airline_theme='solarized'
set t_Co=16



"airline customization
" disable branchname
let g:airline_section_b   =''


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_elixir_checker = 1
let g:syntastic_enable_go_checker = 1
let g:syntastic_elixir_checkers = ['elixir']
set runtimepath^=~/.vim/bundle/ctrlp.vim

" GO  vim -go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
"let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
"let g:go_metalinter_autosave_enabled = ['vet', 'golint']
"let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']


" Disalbe synatstic as it doesnt work with vim-go
let g:syntastic_disabled_filetypes=['go']


" use with /\%>80v.\+ to higliht
" or set colorcolumn=72
set hlsearch

