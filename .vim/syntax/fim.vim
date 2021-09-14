" Vim syntax file
" Language: Personal text markup
" Maintainer: Devora 
" Latest Revision: 07/04/2021

if exists("b:current_syntax")
  finish
endif

" syn keyword basicLanguageKeywords WHAT? OBS: ex:
syn region code start='###' end='###'
syn region ita start='§' end='§'
syn match TITLE "^[A-Z][A-Z][A-Z].*$"


syn match chapter '^[0-9][0-9]\.\ .*$'
syn match sub '^[0-9][0-9]\.[0-9][0-9]\.\ .*$'
syn match subsub '^[0-9][0-9]\.[0-9][0-9]\.[0-9][0-9]\.\ .*$'
syn match subsubsub '^[0-9][0-9]\.[0-9][0-9]\.[0-9][0-9]\.[0-9][0-9]\.\ .*$'
syn match subsubsubsub '^[0-9][0-9]\.[0-9][0-9]\.[0-9][0-9]\.[0-9][0-9]\.[0-9][0-9]\.\ .*$'


syn match enum '^[a-zA-Z]).*$' 
syn match obs '^# .*$'
syn match point '^\* .*$'
