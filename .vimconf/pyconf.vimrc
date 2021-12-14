au BufNewFile,BufRead *.py
			\ set tabstop=4 |
			\ set softtabstop=4 |
			\ set shiftwidth=4 |
			\ set expandtab |
			\ set fileformat=unix |
			\ set foldmethod=indent |
			\ set foldlevel=99
"
" filetype plugin on
" let g:pydiction_location = '/home/across/.vim/plugged/pydiction/complete-dict'
" let g:pydiction_menu_height = 3
au BufNewFile,BufRead *.py set dictionary+=/home/across/.vim/pydiction/complete-dict





" enables pycheck. Checks erros on the python syntaxis
command! Pycheck call DoMake('pyflakes3', 'pycodestyle')
function! DoMake(...)
	update  " save any changes because makeprg checks the file on disk
	let savemp = &makeprg
	let qflist = []
	for prg in a:000
		let &makeprg = prg . ' %'
		silent make!
		let qflist += getqflist()
	endfor
	if empty(qflist)
		cclose
	else
		call setqflist(qflist)
		copen
		cfirst
	endif
	let &makeprg = savemp
	redraw!
endfunction


if has("autocmd")
    autocmd FileType python set complete+=k/home/across/.vim/pydiction/complete-dict isk+=.,(
endif " has("autocmd"
