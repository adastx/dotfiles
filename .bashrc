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
export PAGER=most

source '/usr/share/fzf/key-bindings.bash'
source '/usr/share/fzf/completion.bash'
source '/usr/share/autojump/autojump.bash'

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
alias ll='exa -la'
alias lt='exa -T'
alias lh="exa -1dI '.|..' .*"

alias g='git'
alias gs='git status'
alias lg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(cyan)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias com='git commit'
alias sth='git stash'
alias clone='git clone'
alias u='git add -u'
alias gdf='git diff'
alias gpl='git pull'

alias config='/usr/bin/git --git-dir=/home/adam/.cfg/ --work-tree=/home/adam'
alias cs='config status'
alias clg="config log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(cyan)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias ccom='config commit'
alias csth='config stash'
alias cu='config add -u'
alias cdf='config diff'
alias cpl='config pull'
alias cvim='GIT_DIR=$HOME/.cfg GIT_WORK_TREE=$HOME vim'

alias loadbash='source ~/.bashrc'
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vim/vimrc'
alias nvimrc='cd $XDG_CONFIG_HOME/nvim;nvim .'
alias i3config='vim $XDG_CONFIG_HOME/i3/config'
alias startup='vim $XDG_CONFIG_HOME/i3/init'

cpy() { readlink -en $1 | xclip -sel clipboard; }

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
alias pc='ssh -p 2080 adam@ooz'
alias rpi='ssh -p 2080 adam@rpi2'
alias todo='vim ~/Documents/todo.txt'

alias luamake=/home/adam/Documents/github/lua-language-server/3rd/luamake/luamake

eval "$(starship init bash)"
