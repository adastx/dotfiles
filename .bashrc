# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTCONTROL=ignoreboth:erasedups
HISTSIZE=100000
HISTFILESIZE=$HISTSIZE

shopt -s histappend
shopt -s checkwinsize

PATH="$HOME/bin:$PATH"
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.dotnet/tools:$PATH"
export PATH
export EDITOR=nvim
export VISUAL=nvim
export PAGER="less -i -j.5 -R"

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash
source $XDG_DATA_HOME/cargo/env
source $XDG_CONFIG_HOME/aliases

eval "$(zoxide init bash)"
eval "$(starship init bash)"

pfetch
