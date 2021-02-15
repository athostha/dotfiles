set linebreak
set is
set hls
set number
set nocompatible
set splitbelow
set splitright


filetype plugin indent on
filetype off
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
"set laststatus=2
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

let python_highlight_all=1
syntax on
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
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


"NERDTree
nnoremap <C-n> :NERDTree<CR>
let NERDTreeMapOpenInTab='<ENTER>'


"shortcuts
nnoremap <F2> :w<CR>
nnoremap <C-c> :s!^!#!<CR>
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>


"au BufNewFile,BufRead *.end

let g:no_highlight_group_for_current_word=["Statement", "Comment", "Type", "PreProc"]
function s:HighlightWordUnderCursor()
    let l:syntaxgroup = synIDattr(synIDtrans(synID(line("."), stridx(getline("."), expand('<cword>')) + 1, 1)), "name")

    if (index(g:no_highlight_group_for_current_word, l:syntaxgroup) == -1)
        exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
    else
        exe 'match IncSearch /\V\<\>/'
    endif
endfunction

autocmd CursorMoved * call s:HighlightWordUnderCursor()

inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap ' ''<ESC>ha
inoremap [ []<ESC>ha

set nocompatible
filetype plugin on       " may already be in your .vimrc

augroup pencil
  autocmd!
  autocmd FileType fim         call pencil#init()
augroup END

