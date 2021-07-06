set autoindent
set linebreak
" set backup
" set writebackup
set is
" set hls
set number
set nocompatible
set splitbelow
set splitright

" test
" filetype plugin indent on
filetype off
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ [%{wordcount().words}\ words]\ %{strftime('%c')}
set laststatus=2
set numberwidth=2
set encoding=utf-8

" Enable folding
set foldmethod=indent
set foldlevel=99

if filereadable(expand("~/.vimrc.plug"))
source ~/.vimrc.plug
endif


let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" let python_highlight_all=2
syntax on
set clipboard=unnamedplus


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za


au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2


"Tab Navigation
nnoremap <tab>1 1gt
nnoremap <tab>2 2gt
nnoremap <tab>3 3gt
nnoremap <tab>4 4gt
nnoremap <tab>5 5gt
nnoremap <tab>6 6gt
nnoremap <tab>7 7gt
nnoremap <tab>8 8gt
nnoremap <tab>9 9gt
nnoremap <tab>0 0gt
nnoremap <tab>h :tabprevious<CR>
nnoremap <tab>l   :tabnext<CR>
nnoremap <tab>n     :tabnew<CR>
nnoremap <C-c>     gcc<CR>



"shortcuts
nnoremap <F2> :w<CR>




let g:rainbow_active = 1
nmap <F8> :TagbarToggle<CR>
nmap dç :call Deleteblock()<CR>
nmap yç :call Yankblock()<CR>
nmap cç :call Substituteblock()<CR>




function Selectblock()
	let number = line('.')
	let line = getline('.')
	if line[-1:]==":"
		let number = number + 1
	endif
	let pi = indent(number)
	let gnumber = number
	let snumber = number
	let coun = 1
	while 1
		let th = number+coun
		if indent(th)>=pi
			let gnumber = th
		else
			break
		endif
		let coun = coun + 1
	endwhile
	let coun = 1
	while 1
		let th = number-coun
		if indent(th)>=pi
			let snumber = th
		else
			let snumber = th
			break
		endif
		let coun = coun + 1
	endwhile
	return [snumber, gnumber]
endfunction
function Deleteblock()
	let numlist = Selectblock()
	let a = numlist[0]
	let b = numlist[1]
	exec a.",".b."d"
endfunction
function Yankblock()
	let numlist = Selectblock()
	let a = numlist[0]
	let b = numlist[1]
	exec a.",".b."y"
endfunction
function Substituteblock()
	let numlist = Selectblock()
	let a = numlist[0]
	let b = numlist[1]
	exec a.",".b."c"
endfunction


function Runontmux()
	write
	!~/.vim/myplug/tmuxscreens %
endfunction
function Runtmuxclean()
	write
	!~/.vim/myplug/tmuxscreens2 %
endfunction
function Cleantmux()
	!tmux send -t 2 "clear" Enter
endfunction
function Stoptmux()
	!tmux send-keys -t 2 'C-c'
endfunction

" Manages tmux as a debugging tool
nmap çc :call Runtmuxclean()<CR> 
nmap çç :call Runontmux()<CR> 
nmap çl :call Cleantmux()<CR> 
nmap çs :call Stoptmux()<CR>

"passes word through google tranlator
ab 1pd !trans -b pt:de
ab 1dp !trans -b de:pt 
ab 1ed !trans -b en:de
ab 1de !trans -b de:en
ab 1pe !trans -b pt:en
ab 1ep !trans -b en:pt

ab 2pd r !trans -b pt:de
ab 2dp r !trans -b de:pt 
ab 2ed r !trans -b en:de
ab 2de r !trans -b de:en
ab 2pe r !trans -b pt:en
ab 2ep r !trans -b en:pt


" filetype plugin on
" let g:pydiction_location = '/home/across/.vim/plugged/pydiction/complete-dict'
" let g:pydiction_menu_height = 3
au BufNewFile,BufRead *.py set dictionary+=/home/across/.vim/pydiction/complete-dict





" enables pycheck. Checks erros on the python syntaxis
nmap çk :Pycheck<CR>
nmap çn :cnext<CR>
nmap çp :cprevious<CR>
command! Pycheck call DoMake('pyflakes', 'pycodestyle')
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

" colorscheme crt
colorscheme neon


augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
augroup END
let g:Illuminate_delay = 1
" let g:Illuminate_highlightUnderCursor = 0

" Renames tmux window after current buffer, than changes it back at closing time
autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand("%"))
au VimLeave * silent call system("tmux setw automatic-rename")

" Colors .fim files
au BufRead,BufNewFile *.fim set filetype=fim
highlight codesnipet ctermfg=yellow
highlight chapter ctermbg=red ctermfg=black
highlight subchapter ctermbg=black ctermfg=red
highlight marked ctermbg=green ctermfg=black
highlight basicLanguageKeywords ctermbg=black ctermfg=cyan
highlight UPPER ctermbg=black ctermfg=red

