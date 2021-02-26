import subprocess

panes = subprocess.run(['tmux', 'list-panes'],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT).stdout.decode()

windows = subprocess.run(['tmux', 'list-windows'],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT).stdout.decode()

#activepane
npanes = panes.count('\n')
atvpane = panes[:panes.find('active')]
print(atvpane)
#activewindow
nwindows = windows.count('\n')
# print(windows)


# if [[ $@ = "next" ]]; then
	# echo yes
# fi


# if [[ $@ = "prev" ]]; then
	# echo no
# fi
