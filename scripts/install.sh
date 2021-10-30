#!/bin/bash

mkdir -p $HOME/projs/php
mkdir $HOME/.config
mkdir -p $HOME/.config/broot
ln -s $PREFIX $HOME
ln -s $HOME/dotfiles/NERDTreeBookmarks $HOME/.NERDTreeBookmarks
ln -s $HOME/dotfiles/broot/conf.hjson $HOME/.config/broot/conf.hjson
ln -s $HOME/dotfiles/broot/git-diff-conf.toml $HOME/.config/broot/git-diff-conf.toml
ln -s $HOME/dotfiles/broot/select.toml $HOME/.config/broot/select.toml
ln -s $HOME/dotfiles/bashrc $HOME/.bashrc
ln -s $HOME/dotfiles/tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/termux $HOME/.termux
ln -s $HOME/dotfiles/bin $HOME
ln -s $HOME/dotfiles/nvim $HOME/.config/nvim
#ln -s $HOME/dotfiles/powerline $HOME/.config/powerline
ln -s $HOME/dotfiles/php.ini /data/data/com.termux/files/usr/lib

chmod u+x $HOME/bin
chmod u+x $HOME/dotfiles/scripts

pkg i bash-completion bat build-essential ctags direnv fasd fzf mariadb neovim nnn nodejs-lts php python ripgrep sqlite termux-api tmux -y

git clone https://github.com/cedricpriestley/adminer-theme.git $HOME/projs/php/adminer-theme

# curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -0 https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

curl -0 https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

git clone https://github.com/andreafrancia/trash-cli.git $PREFIX/share/trash-cli
python $PREFIX/share/trash-cli/setup.py install

wget https://raw.githubusercontent.com/tacnoman/dephpugger/master/dephpugger.phar -O dephpugger
chmod +x ./dephpugger
mv ./dephpugger $PREFIX/bin/dephpugger

pip3 install pynvim
pip3 install --upgrade neovim
pip3 install neovim-remote
pip3 install --upgrade pip setuptools
pip install --user tmuxp

$HOME/dotfiles/scripts/composer-install.sh
mv ./composer.phar /data/data/com.termux/files/usr/bin/composer
eval "$(symfony-autocomplete)"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/instal
