HISTFILE=$ZDOTDIR/history
HISTSIZE=1000
SAVEHIST=5000
unsetopt beep

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
autoload -Uz compinit 
compinit -d $ZDOTDIR/zcompdump-$ZSH_VERSION
setopt COMPLETE_ALIASES

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

alias loadzsh='source $XDG_CONFIG_HOME/zsh/.zshrc'
alias zshrc='vim $XDG_CONFIG_HOME/zsh/.zshrc'
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
alias game='cd ~/Documents/github/2018shock/'
alias nova='ssh -p 2080 192.168.0.156'

alias luamake=/home/adam/Documents/github/lua-language-server/3rd/luamake/luamake

function zvm_config() {
    ZVM_VI_INSERT_ESCAPE_BINDKEY=kj
}

function zvm_after_init() {
    source '/usr/share/fzf/key-bindings.zsh'
    source '/usr/share/fzf/completion.zsh'
    bindkey '^ ' autosuggest-accept
    bindkey '\e.' insert-last-word
}

eval "$(starship init zsh)"

source '/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh'
source '/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
source '/usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.zsh'
source '/usr/share/autojump/autojump.zsh'
