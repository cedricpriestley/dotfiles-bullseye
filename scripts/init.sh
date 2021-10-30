#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/cedricpriestley/dotfiles/master/scripts/init.sh)"
# update system
pkg up -y

# install git
pkg i git -y

# clone installlation script
git clone https://github.com/cedricpriestley/termux-conf.git $HOME/dotfiles

# configure git
git config --global user.name "Cedric Priestley"
git config --global user.email cedricpriestley@gmail.com

git config --global diff.tool nvimdiff3
git config --global diff.prompt false
git config --global difftool.prompt false
git config --global merge.tool nvimdiff3

# execute installation script
chmod u+x $HOME/dotfiles/scripts/install.sh
./$HOME/dotfiles/scripts/install.sh
