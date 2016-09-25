" Vim syntax file
" Language:	ADP (OpenACS and AOLserver Document Template system)
" Maintainer:	paul cannon <pik@debian.org>
" URL:		http://people.debian.org/~pik/adp.vim
" Last Change:	2003 Feb 5
" Version:	0.2

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" include the html syntax
if version < 600
  source $VIMRUNTIME/syntax/html.vim
else
  runtime! syntax/html.vim
endif
unlet b:current_syntax

" <if> statements
syn region adpIf matchgroup=adpIfBound start="<if\>"rs=e-2 end=">" keepend contains=adpIfExpr,adpVar,htmlString
syn cluster htmlPreproc add=adpIf

" Expressions in an <if> statement
syn keyword adpIfExpr eq ne lt le gt ge in between not contained
syn keyword adpIfExpr nil defined odd even true false and or contained

" Variables
syn region adpVar oneline matchgroup=adpBound start=/@/ keepend end=/@/
syn cluster htmlPreproc add=adpVar

" Tag names
syn keyword adpTags master slave property include include-optional contained
syn keyword adpTags multiple group grid list noparse else if contained
syn keyword adpTags formtemplate formwidget formgroup formerror contained
syn cluster htmlTagNameCluster add=adpTags

" Argument names
syn keyword adpArgs maxrows name startrow column cols src id contained
syn cluster htmlArgCluster add=adpArgs

" Highlighting
hi link adpTags Special
hi link adpVar Identifier
hi link adpBound SpecialChar
hi link adpArgs htmlArg
hi link adpIf adpTags
hi link adpIfBound htmlTag
hi link adpIfExpr htmlStatement

let b:current_syntax = "adp"
