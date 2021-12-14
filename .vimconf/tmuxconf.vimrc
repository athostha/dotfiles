function Runontmux()
	write
	!~/.vim/myplug/tmuxscreens %
endfunction
function Runontmuxv()
	write
	!~/.vim/myplug/tmuxscreensV %
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



" Renames tmux window after current buffer, than changes it back at closing time
autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window " . expand("%"))
au VimLeave * silent call system("tmux setw automatic-rename")
