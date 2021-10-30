#! /bin/sh
#
# getTouchKeyLink.sh
# Copyright (C) 2020  <@localhost>
#
# Distributed under terms of the MIT license.
#

# if [ "$(readlink -- "$HOME/dotfiles/termux-full")" = "" ]; then
#   rm -f $HOME/.termux
#   ln -s $HOME/dotfiles/termux-ctrl $HOME/.termux
# else
#   rm -f $HOME/.termux
#   ln -s $HOME/dotfiles/termux-full $HOME/.termux
# fi

case $1 in
  [1])
    rm -f $HOME/.termux/termux.properties
    ln -s $HOME/dotfiles/termux/termux.properties1 $HOME/.termux/termux.properties
    termux-reload-settings
    tmux select-window -t 1
    ;;
  [2])
    rm -f $HOME/.termux/termux.properties
    ln -s $HOME/dotfiles/termux/termux.properties2 $HOME/.termux/termux.properties
    termux-reload-settings
    tmux select-window -t 2
esac

