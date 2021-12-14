"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>
nnoremap <space> za

nmap <F8> :TagbarToggle<CR>

"shortcuts
nnoremap <F2> :w<CR>
nnoremap <C-w> :w<CR>

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
" nnoremap <C-c>     :gcc<CR>


" Manages tmux as a debugging tool
nmap çc :call Runtmuxclean()<CR> 
nmap çç :call Runontmux()<CR> 
nmap çÇ :call Runontmuxv()<CR> 
nmap çl :call Cleantmux()<CR> 
nmap çs :call Stoptmux()<CR><CR>


nmap çk :Pycheck<CR>
nmap çn :cnext<CR>
nmap çp :cprevious<CR>


" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-w> <S-Right>
inoremap <C-b> <S-Left>
" inoremap <C-x> <Del>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
cnoremap <C-w> <S-Right>
cnoremap <C-b> <S-Left>
" cnoremap <C-x> <Del>

noremap <F3> :Autoformat<CR>
