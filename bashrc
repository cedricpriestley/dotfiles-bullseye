#!/bin/bash
# ~/.bashrc :executed by bash(1) for non-login shells

# Change default (/etc/profile) shell prompt (PS1) and umask
#PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
umask 022

# Create "ls" aliases with colorized output
export LS_OPTIONS='--color=auto --group-directories-first --sort=extension -h'
export TERM="screen-256color"
eval "`dircolors`"
alias ls='ls $LS_OPTIONS -F'
alias ll='ls -l'
alias l='ls -lA'
alias h='cd ~/'

# Create aliases to help avoid making mistakes
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# alias rm=trash-put

# Create FASD aliases
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

# Create single character aliases for the most common commands
alias c='clear'
alias x='exit'
alias ..='cd ../'

alias b='br -h'
alias t=tree
alias v=vedit

# alias python3=python
# if [ -f ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
#     source ~/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
# fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# set tmux color
alias tmux="TERM=screen-256color tmux"

# Lists all ongoing sessions
alias tls='tmux list-sessions'

# Set x server address
export DISPLAY=':1'

# use ripgrep to list fzf files
# export FZF_DEFAULT_COMMAND='rg --files --follow --hidden'
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*,vendor/*}"'
# alias vim='nvr --servername ${NVIM_LISTEN_ADDRESS} --nostart'

# ----------------------
# Git Aliases
# ----------------------
alias g='git'
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gc='git commit'
alias gcm='git commit --message'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gr='git rebase'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'

[[ -e "$HOME/.fzf-extras/fzf-extras.sh" ]] \
  && source "$HOME/.fzf-extras/fzf-extras.sh"

# Auto-attach New Shell Sessions to Tmux
_not_inside_tmux() {
  [[ -z "$TMUX" ]]
}

export PREFIX=/usr
ensure_tmux_is_running() {
  if _not_inside_tmux; then
    # cd /data/data/com.termux/files/home/dotfiles
    session_name="$(basename "$PWD" | tr . -)"
    # rm -f $PREFIX/tmp/nvimsocket-${session_name}
    rm -f $PREFIX/tmp/nvimsocket
    export NVIM_LISTEN_ADDRESS=$PREFIX/tmp/nvimsocket-${session_name}
    . ~/bin/tat
  else
    session_name="$(basename "$PWD" | tr . -)"
    # export NVIM_LISTEN_ADDRESS=$PREFIX/tmp/nvimsocket-${session_name}
    # export NVIM_LISTEN_ADDRESS=$PREFIX/tmp/nvimsocket
  fi
}

#session_name="$(basename "$PWD" | tr . -)"
# session_name="$(tmux display-message -p '#I')"
# export NVIM_LISTEN_ADDRESS=$PREFIX/tmp/nvimsocket
# export NVIM_LISTEN_ADDRESS=$PREFIX/tmp/nvimsocket-${session_name}
export NODE_ENV='development'
export PATH=${PATH}:~/.fzf_browser:$HOME/.local/bin:$HOME/dotfiles/bin:$PREFIX/share/tra.sh
export PATH=$PATH:$HOME/.config/composer/vendor/bin
export PATH=$PATH:$PREFIX/usr/bin
# export XDEBUG_CONFIG="idekey=xdebug remote_host=localhost remote_enable=1"
# export EDITOR='nvr --servername ${NVIM_LISTEN_ADDRESS} --remote-wait'
# export EDITOR='nvr --servername ${NVIM_LISTEN_ADDRESS} --remote-waitv'
# export VISUAL="nvr --servername $NVIM_LISTEN_ADDRESS --remote --nostart"
# export VISUAL="$(echo 'tmux select-window -t dotfiles:1')"
# nved=~/bin/fzf-open
nved=~/dotfiles/bin/nv
export VISUAL="${nved}"
export EDITOR="${nved}"
export TERM='xterm-256color'


# export NNN_BMS='d:~/storage/shared/home/dotfiles;h:~/'
export NNN_SSHFS="sshfs -o follow_symlinks"
export NNN_COLORS="2136"
# export NNN_OPENER=~/bin/fzf-open
export NNN_OPENER=~/dotfiles/bin/nv
export NNN_OPTS="d"
export NNN_TRASH=1
export NNN_FIFO=/tmp/nnn.fifo nnn
# trash (needs trash-cli) instead of delete
alias ncp="cat ${NNN_SEL:-${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.selection} | tr '\0' '\n'"
[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"
# export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'
export NNN_PLUG='f:fzcd;o:fzopen;z:fzz;d:diffs;t:treeview;v:preview-tui'

# export NNN_PLUG='t:treeview'
# export NNN_PLUG='f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:imgview'
alias bo="br --conf ~/.config/broot/select.toml"

# termux-chroot

export HISTCONTROL=ignoreboth:erasedups
export HISTCONTROL=$HISTCONTROL:ignorespace
export HISTCONTROL=$HISTCONTROL:ignoreboth
export HISTSIZE=5000
eval "$(fasd --init auto)"

# export FZF_DEFAULT_OPTS="--height 100% --ansi --reverse --cycle --prompt=? --info=inline -m --header='' --color='gutter:#000000'"
export FZF_DEFAULT_OPTS="--ansi --reverse --cycle --prompt=? --inline-info -m --header='LIST' --preview='bat --color=always --style=header,grid --line-range :300 {}' --preview-window=bottom:15"


export DOWNLOADS=$HOME/downloads

_isRunning() {
  ps -o comm= -C "$1" 2>/dev/null | grep -x "$1" >/dev/null 2>&1
}

function tree {
  br -c :pt "$@"
}

# git diff before commit
function gg {
  br --conf ~/.config/broot/git-diff-conf.toml --git-status
}

# start mysql
#/data/data/com.termux/files/usr/bin/mysqld --skip-grant-tables --general-log &

function n {
  # Block nesting of nnn in subshells
  if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
    echo "nnn is already running"
    return
  fi

    # The default behaviour is to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, remove the "export" as in:
    #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    # NOTE: NNN_TMPFILE is fixed, should not be modified
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
      . "$NNN_TMPFILE"
      rm -f "$NNN_TMPFILE" > /dev/null
    fi
  }

# . ~/git-completion.bash

#export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\w$(__git_ps1 " (%s)")\$ '

# . ~/nvr-completion.bash

export PATH=$PATH:~/bin:$HOME/dotfiles/bin:$HOME/.composer/vendor/bin:$PREFIX/lib/node_modules/bin:$PREFIX/bin:/usr/local/bin:$HOME/.cargo/bin:$HOME/.config/composer/vendor/bin/
# export PREFIX=/usr

alias ep="echo -e ${PATH//:/\\n}"
# alias ep="tr ':' '\n' <<< '$PATH'"

# alias adminer='cd ~/admin/share/adminer;php -S 127.0.0.1:8083'
alias maria='mysqld_safe -u root &'
alias apache2='rm -f /data/data/com.termux/files/usr/var/run/apache2/httpd.pid;killall httpd;httpd'
alias r=ranger

# source $PREFIX/share/fzf-tab-completion/bash/fzf-bash-completion.sh

# bind 'TAB':menu-complete
# bind -x '"\t": fzf_bash_completion'
# alias drupal="./vendor/bin/drupal"
# alias f="${fzf}"
alias f=fzf
alias p=pwd
alias e=echo
alias t1="tree -L 1"
alias t2="tree -L 2"
alias t3="tree -L 3"
alias sb="source ~/.bashrc"
# alias cd="cd $(fzf)"
# alias cd="__fzf_cd__"
# bind '^[c": cd"'
# bind 'TAB':menu-complete

export COMPOSER_MEMORY_LIMIT=-1

# eval "$(direnv hook bash)"
bind -r '\C-s'
stty -ixon

session_name="$(basename "$PWD" | tr . -)"
# export NVIM_LISTEN_ADDRESS=$PREFIX/tmp/nvimsocket-${session_name}

# source /data/data/com.termux/files/home/.config/broot/launcher/bash/br

# git diff before commit
function gg {
  br --conf ~/.config/broot/git-diff-conf.toml --git-status
}

# source /data/data/com.termux/files/home/.config/broot/launcher/bash/br
# export NVIM_LISTEN_ADDRESS=/data/data/com.termux/files/usr/tmp/nvimsocket-home

# ensure_tmux_is_running
# tmuxp load ~/dotfiles/tmuxp.json
# tmuxp load ~/projs/php/drupal9-headless

# tmuxp load ~/dotfiles/tmuxp/home.json
function blt() {
  if [[ ! -z ${AH_SITE_ENVIRONMENT} ]]; then
    PROJECT_ROOT="/var/www/html/${AH_SITE_GROUP}.${AH_SITE_ENVIRONMENT}"
  elif [ "`git rev-parse --show-cdup 2> /dev/null`" != "" ]; then
    PROJECT_ROOT=$(git rev-parse --show-cdup)
  else
    PROJECT_ROOT="."
  fi

  if [ -f "$PROJECT_ROOT/vendor/bin/blt" ]; then
    $PROJECT_ROOT/vendor/bin/blt "$@"

  # Check for local BLT.
elif [ -f "./vendor/bin/blt" ]; then
  ./vendor/bin/blt "$@"

else
  echo "You must run this command from within a BLT-generated project."
  return 1
  fi
}

if [ -f "$HOME/composer-autocomplete" ] ; then
  . $HOME/composer-autocomplete
fi

export NVIM_LISTEN_ADDRESS=/tmp/nvimsocket
source ~/.git-prompt.sh
# export COMPOSER_COMPLETION_PHP_SCRIPT=~/.composer-completion.php
# source ~/.composer-completion.bash
[ -f $PREFIX/etc/bash_completion ] && . /usr/local/etc/bash_completion
eval "$(symfony-autocomplete)"

# source /data/data/com.termux/files/home/.config/broot/launcher/bash/br
