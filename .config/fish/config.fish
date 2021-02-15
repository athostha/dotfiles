#vi style keybindings
fish_vi_key_bindings
# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish


# Make the blue color for directories more readable
set -x LSCOLORS Exfxcxdxbxegedabagacad


export PATH="/home/across/.dev/anaconda3/bin:$PATH"
export PATH="/home/across/.local/bin:$PATH"
export PATH="/snap/bin:$PATH"
alias ll='ls -la --color=auto'
alias rh='python3 /mnt/sdb1/rhapsodic/rhapsodic.py'
alias sc='sc-im'
alias now='okular /home/across/Documentos/agora/vim.pdf & vim ~/Documentos/vim'
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

set -l base03  "--bold black"
set -l base02  "black"
set -l base01  "--bold green"
set -l base00  "--bold yellow"
set -l base0   "--bold blue"
set -l base1   "--bold cyan"
set -l base2   "white"
set -l base3   "--bold white"
set -l yellow  "yellow"
set -l orange  "--bold red"
set -l red     "red"
set -l magenta "magenta"
set -l violet  "--bold magenta"
set -l blue    "blue"
set -l cyan    "cyan"
set -l green   "green"

# Use these settings if your terminal supports term256 and your terminal hasn't
# been configured with a Solarized theme.i.e. if "blue" is the default blue, not
# Solarized blue.
#
set -l rgb_base03  002b36
set -l rgb_base02  073642
set -l rgb_base01  586e75
set -l rgb_base00  657b83
set -l rgb_base0   839496
set -l rgb_base1   93a1a1
set -l rgb_base2   eee8d5
set -l rgb_base3   fdf6e3
set -l rgb_yellow  b58900
set -l rgb_orange  cb4b16
set -l rgb_red     dc322f
set -l rgb_magenta d33682
set -l rgb_violet  6c71c4
set -l rgb_blue    268bd2
set -l rgb_cyan    2aa198
set -l rgb_green   859900

# Used by fish's completion; see
# http://fishshell.com/docs/2.0/index.html#variables-color

set -g fish_color_normal      $base0
set -g fish_color_command     $base0
set -g fish_color_quote       $cyan
set -g fish_color_redirection $base0
set -g fish_color_end         $base0
set -g fish_color_error       $red
set -g fish_color_param       $blue
set -g fish_color_comment     $base01
set -g fish_color_match       $cyan
set -g fish_color_search_match "--background=$base02"
set -g fish_color_operator    $orange
set -g fish_color_escape      $cyan

# Used by fish_prompt

set -g fish_color_ssh $rgb_base00

set -g __fish_git_prompt_color_branch      $rgb_cyan
set -g __fish_git_prompt_color_dirtystate  $rgb_base3
set -g __fish_git_prompt_color_stagedstate $rgb_green
set -g __fish_git_prompt_color_upstream    $rgb_cyan
