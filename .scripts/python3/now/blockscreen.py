import subprocess
subprocess.Popen(['i3lock -c 000000 -n; i3 focus parent, kill; i3 workspace 1; tmux kill-session -t blocked'], shell=True)
subprocess.Popen(['i3', 'workspace', 'blockscreen'])
subprocess.Popen(['cool-retro-term --fullscreen -e ~/.scripts/bash/tmuxstart blocked'], shell=True)

