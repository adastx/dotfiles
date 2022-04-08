# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1000
HISTFILESIZE=5000

shopt -s histappend
shopt -s checkwinsize

PATH="$HOME/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.dotnet/tools:$PATH"
export PATH
export EDITOR=vim
export VISUAL=vim
export PAGER="less -i -j.5 -R --use-color -Dd+y -Du+c"

alias sudo='doas'
alias sudoedit='doas $EDITOR'

source '/usr/share/fzf/key-bindings.bash'
source '/usr/share/fzf/completion.bash'
source '/usr/share/autojump/autojump.bash'
source "/home/adam/.local/share/cargo/env"

alias q='exit'
alias c='clear'
alias nf='pfetch'

alias ls='exa'
alias l='ls -1'
alias la='ls -1a'
alias ll='ls -la'
alias lt='ls -T'
alias lh="ls -1dI '.|..' .*"

alias gs='git status'
alias lg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(cyan)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

alias config='/usr/bin/git --git-dir=/home/adam/.cfg/ --work-tree=/home/adam'
alias cs='config status'
alias clg="config log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(cyan)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vim/vimrc'
alias nvimrc='cd $XDG_CONFIG_HOME/nvim;nvim'
alias i3config='vim $XDG_CONFIG_HOME/i3/config'
alias startup='vim $XDG_CONFIG_HOME/i3/init'

eval "$(starship init bash)"
