#!/bin/bash

cmdline = $(cat -n ~/dotfiles/commands/tmux-f5.txt | fzf --preview="")
read -a cmdarr <<< "$cmdline"
arrlen = ${#cmdarr[@]}
eval "${cmdarr[$arrlen - 1]}"

# cmd="~/dotfiles/commands/exec.sh ~/dotfiles/commands/tmux-f1.txt"
# eval "$cmd"
