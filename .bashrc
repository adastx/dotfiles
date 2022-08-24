# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTCONTROL=ignoreboth:erasedups
HISTSIZE=100000
HISTFILESIZE=$HISTSIZE

shopt -s histappend
shopt -s checkwinsize

if [ $(id -u) = 0 ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;37m\]\h:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi

PATH="$HOME/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
export PATH
export EDITOR=vim
export VISUAL=vim
export PAGER="less -i -j.5 -R"

source '/usr/share/doc/fzf/examples/key-bindings.bash'
source '/usr/share/doc/fzf/examples/completion.bash'

alias q='exit'
alias c='clear'
alias nf='pfetch'
alias s='systemctl'
alias j='journalctl -xe'

alias ls='exa'
alias l='ls -la'
alias lt='ls -T'
alias lh="ls -1dI '.|..' .*"

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias gs='git status'
alias lg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(cyan)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias cs='config status'
alias clg="config log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(bold yellow)%d%C(reset)' --all"

alias bashrc='vim ~/.bashrc'
alias vimrc='vim $XDG_CONFIG_HOME/vim/vimrc'

eval "$(zoxide init bash)"
