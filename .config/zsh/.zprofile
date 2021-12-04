export MAKEFLAGS="-j$(nproc)"
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
export HISTFILE=$XDG_STATE_HOME/bash/history
export INPUTRC=$XDG_CONFIG_HOME/readline/inputrc 
export PASSWORD_STORE_DIR=$XDG_DATA_HOME/pass 
export GTK_RC_FILES=$XDG_CONFIG_HOME/gtk-1.0/gtkrc
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export RANGER_LOAD_DEFAULT_RC=FALSE

[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx $XDG_CONFIG_HOME/X11/xinitrc -- vt1
