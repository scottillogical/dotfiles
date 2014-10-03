set t_Co=256

" leader stuff
"
set noswapfile

" ----------------------------------------------------------------------------
"  "  Text Formatting
"  "
"  ----------------------------------------------------------------------------
"
set autoindent             " automatic indent new lines
set smartindent            " be smart about it
inoremap # X<BS>#
set wrap                 " wrap lines
set softtabstop=2          " yep, two
set shiftwidth=2           " ..
set tabstop=4
set expandtab              " expand tabs to spaces
set nosmarttab             " fuck tabs
set formatoptions+=n       " support for numbered/bullet lists
set cc=+1                  " highlight 80 characters long
set virtualedit=block      " allow virtual edit in visual block ..

let mapleader = ","
autocmd FileType javascript setlocal textwidth=80
autocmd FileType coffee setlocal textwidth=80
autocmd FileType ruby setlocal textwidth=80
autocmd BufRead *.coffee set textwidth=100

set listchars=trail:. " highlight trailing whitespace
map <leader>l <C-^>
map <leader>b :FufBuffer<CR>
map <leader>f :NERDTreeFind<CR>
map <leader>n :NERDTreeToggle<CR>

" autosave if i switch buffers
"set autowriteall
"au FocusLost * silent! wa

" pathogen stuff
execute pathogen#infect()
syntax on
filetype plugin indent on

"misc
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
set noswapfile
set undofile "persistent undo
set ignorecase  "ignore case in searches
set incsearch "incremental search on / searches
autocmd BufRead,BufNewFile *.html.erb set filetype=eruby

"allows you to paste the same thing twice
"noremap p pgvy
"




" Set encoding
set encoding=utf-8
"
" " Whitespace stuff
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
set statusline+=%l


" Refreshes commandt regularuly
"augroup CommandTExtension
  "autocmd!
  "autocmd FocusGained * CommandTFlush
  "autocmd BufWritePost * CommandTFlush
"augroup END

" spell check on markdown files
"autocmd BufNewFile,BufRead *.markdown setlocal spell spelllang=en_us
"autocmd BufNewFile,BufRead *.md setlocal spell spelllang=en_us


"set backupdirs
set backupdir=/tmp
set directory=/tmp
set swapfile
set dir=/tmp
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set dir=~/.vim/tmp
set undodir=~/.vim/tmp


" better tab completion on filenames
set wildmode=longest,list,full
set wildmenu


" use silver searcher instead of ack
let g:ackprg = 'ag --nogroup --nocolor --column'



nmap <silent> <leader>d <Plug>DashSearch


"let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': ['javascript'],
                     \ 'passive_filetypes': ['ruby'] }

nmap <Ctrl-A> <Nop>


 "A don't give the "ATTENTION" message when an existing swap file
 "        is found.
set shortmess+=A


" allow mouse resizing of splits
set mouse+=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif
let g:airline_theme='luna'


syntax enable
set background=dark
colorscheme solarized

let g:airline#extensions#whitespace#enabled = 0

" Use ctrl-[hjkl] to select the active split!

"ust left right to select active split
nnoremap <Right> <C-w>l
nnoremap <Left> <C-w>h
nnoremap <Up> <C-w>k
nnoremap <Down> <C-w>j
let g:fuf_keyOpenVsplit = '<C-j>'

"remove trailing whitespace
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>



" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/


" find jshint for syntastic
"function s:find_jshintrc(dir)
  "let l:found = globpath(a:dir, '.jshintrc')
  "if filereadable(l:found)
    "return l:found
  "endif

  "let l:parent = fnamemodify(a:dir, ':h')
  "if l:parent != a:dir
    "return s:find_jshintrc(l:parent)
  "endif

  "return "~/.jshintrc"
"endfunction

"function UpdateJsHintConf()
  "let l:dir = expand('%:p:h')
  "let l:jshintrc = s:find_jshintrc(l:dir)
  "let g:syntastic_javascript_jshint_conf = l:jshintrc
"endfunction

"au BufEnter * call UpdateJsHintConf()


" vim-jsbeautify bindings
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>


" autotrim whitespace
autocmd BufWritePre * :%s/\s\+$//e
let g:syntastic_disabled_filetypes = ['ruby']
func GitGrep(...)
  let save = &grepprg
  set grepprg=git\ grep\ -n\ $*
  let s = 'grep'
  for i in a:000
    let s = s . ' ' . i
  endfor
  exe s
  let &grepprg = save
endfun
command -nargs=? G call GitGrep(<f-args>)

let g:syntastic_ruby_checkers=['']

autocmd BufRead,BufNewFile *.md setlocal spell
let g:syntastic_debug_file = '~/syntastic.log'
let g:syntastic_ruby_mri_exec = '~/.rbenv/versions/1.9.3-p484/bin/ruby'
let g:syntastic_ruby_checkers=['mri']
let g:syntastic_check_on_open=0


" source: http://drydevelopment.com/blog/vim-pbcopy-on-os-x
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>
