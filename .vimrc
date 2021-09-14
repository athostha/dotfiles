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
set termguicolors
set nrformats-=octal
set laststatus=2
set numberwidth=2
set encoding=utf-8
set clipboard=unnamedplus

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ [%{wordcount().words}\ words]\ %{strftime('%c')}

" filetype plugin indent on
filetype off
 let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
 let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"


if filereadable(expand("~/.vimrc.plug"))
source ~/.vimrc.plug
endif


let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2





augroup illuminate_augroup
    autocmd!
    autocmd VimEnter * hi illuminatedWord cterm=underline gui=underline
augroup END
let g:Illuminate_delay = 1
" let g:Illuminate_highlightUnderCursor = 0
"

" colorscheme crt
colorscheme neon
" colorscheme 1989
set background=dark
highlight Normal guifg=NONE guibg=NONE
highlight NonText guifg=#d1fa00 guibg=NONE
highlight LineNr guifg=#d1fa00





source ~/.vimconf/nmap.vimrc
source ~/.vimconf/fimcolors.vimrc
source ~/.vimconf/tmuxconf.vimrc
source ~/.vimconf/pyconf.vimrc
source ~/.vimconf/testcolors.vimrc
source ~/.vimconf/translator.vimrc
