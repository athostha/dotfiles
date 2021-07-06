" Vim syntax file
" Language: Personal text markup
" Maintainer: Devora 
" Latest Revision: 07/04/2021

if exists("b:current_syntax")
  finish
endif

syn keyword basicLanguageKeywords WHAT? OBS: ex:
syn region codesnipet start='###' end='###'
syn match chapter '^[0-9][0-9]\ -\ .*$'
syn match subchapter '^[a-zA-Z]).*$' 
syn match marked '^# .*$'
syn match UPPER "^[A-Z][A-Z][A-Z].*$"

