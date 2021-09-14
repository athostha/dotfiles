" Colors .fim files
au BufRead,BufNewFile *.fim set filetype=fim
highlight code guifg=yellow
highlight TITLE guifg=red gui=bold

highlight chapter guibg=#ff0000 gui=bold cterm=bold
highlight sub ctermbg=2 ctermfg=black
highlight subsub ctermbg=3 ctermfg=black
highlight subsubsub guibg=#0074d8 guifg=#ffff99 ctermbg=4 ctermfg=black
highlight subsubsubsub ctermbg=7 ctermfg=black

highlight enum guifg=#e0b0ff gui=bold cterm=bold
highlight obs guibg=#b16286 guifg=black
highlight point guifg=#03BB85
highlight ita ctermbg=0 ctermfg=6 cterm=bold


au BufNewFile,BufRead *.fim
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set fileformat=unix

