" filetype detection 
" sourced before $VIMRUNTIME/filetype.vim 
" 
" Detects: adp 

if exists("did_load_filetypes") 
  finish 
endif 

augroup filetypedetect 
  au! BufRead,BufNewFile *.adp   setfiletype adp 
augroup END 
