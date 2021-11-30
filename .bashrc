# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend
shopt -s checkwinsize

PATH="$HOME/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.dotnet/tools:$PATH"
export PATH

export EDITOR=vim
export VISUAL=vim
export PAGER=most

alias q='exit'
alias c='clear'
alias h='history'
alias cl='c;l'
alias p='cat'
alias k='kill'
alias null='/dev/null'
alias r='ranger'
alias nf='neofetch'
alias pf='pfetch'

alias ls='exa'
alias l='exa -1'
alias la='exa -1a'
alias lt='exa -T'
alias lh="exa -1dI '.|..' .*"

cd_up() {
    case $1 in
        *[!0-9]*)
            cd $( pwd | sed -r "s|(.*/$1[^/]*/).*|\1|i" )
            ;;
        *)
            cd $(printf "%0.0s../" $(seq 1 $1));
            ;;
    esac
}
alias '..'='cd_up'
alias ghd='cd ~/Documents/github'
alias aau='cd ~/Documents/uni/5\ Semester'

alias g='git'
alias gs='git status'
alias lg='git log'
alias com='git commit -m'
alias sth='git stash'
alias clone='git clone'
alias u='git add -u'
alias all='git add .'

alias config='/usr/bin/git --git-dir=/home/adam/.cfg/ --work-tree=/home/adam'
alias cs='config status'
alias clg='config log'
alias ccom='config commit -m'
alias csth='config stash'
alias cu='config add -u'
alias call='config add .'
alias cvim='GIT_DIR=$HOME/.cfg GIT_WORK_TREE=$HOME vim'

alias loadbash='source ~/.bashrc'
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vim/vimrc'
alias nvimrc='cd $XDG_CONFIG_HOME/nvim;nvim .'
alias i3config='vim $XDG_CONFIG_HOME/i3/config'
alias startup='vim $XDG_CONFIG_HOME/i3/init'

alias luamake=/home/adam/Documents/github/lua-language-server/3rd/luamake/luamake

eval "$(starship init bash)"
