#!/bin/bash

cmdline=$(cat -n $1 | fzf --preview="")
# IFS='|'
read -a cmdarr <<< "$cmdline"
eval "${cmdarr[1]}"
