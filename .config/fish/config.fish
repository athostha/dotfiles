#vi style keybindings
fish_vi_key_bindings
# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Make the blue color for directories more readable
set -x LSCOLORS Exfxcxdxbxegedabagacad


export PATH="$HOME/.vim/myplug:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/home/across/.dev/anaconda3/bin:$PATH"
export PATH="/home/across/.local/bin:$PATH"
export PATH="/snap/bin:$PATH"
alias ll='ls -la --color=auto'
alias rh='python3 /mnt/sdb1/rhapsodic/rhapsodic.py'
alias sc='sc-im'
alias now='python3 ~/.scripts/python3/now/now.py'
alias nog='okular "Documentos/Kaufmann, Walter (ed.) - Twenty-Five German Poets (Norton, 1975).pdf" & vim ~/Documentos/alemao'
alias ranger='/opt/ranger/ranger.py'

function fish_prompt
  set_color blue
  echo -en '['
  set_color ff8100
  echo -en (basename (prompt_pwd))
  set_color blue
  echo -en ']'
  set_color white
  echo -en ':'
  set_color normal
end

# Dracula Color Palette
set -l foreground f8f8f2
set -l selection 44475a
set -l comment 6272a4
set -l red ff5555
set -l orange ffb86c
set -l yellow f1fa8c
set -l green 50fa7b
set -l purple bd93f9
set -l cyan 8be9fd
set -l pink ff79c6

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_match --background=$selection
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
