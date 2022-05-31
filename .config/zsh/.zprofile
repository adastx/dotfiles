export MAKEFLAGS="-j$(nproc)"
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
export HISTFILE=$XDG_STATE_HOME/bash/history
export INPUTRC=$XDG_CONFIG_HOME/readline/inputrc 
export PASSWORD_STORE_DIR=$XDG_DATA_HOME/pass 
export GTK_RC_FILES=$XDG_CONFIG_HOME/gtk-1.0/gtkrc
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export GTK_THEME=Arc:dark
export RANGER_LOAD_DEFAULT_RC=FALSE
export CARGO_HOME=$XDG_DATA_HOME/cargo 
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export MPLAYER_HOME=$XDG_CONFIG_HOME/mplayer
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv 
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel ${_JAVA_OPTIONS}"
export SSB_HOME="$XDG_DATA_HOME"/zoom
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export CM_LAUNCHER=rofi
export CM_SELECTIONS=clipboard
export CM_DIR=/tmp
export PF_INFO="ascii title os kernel uptime pkgs memory"
export QT_QPA_PLATFORMTHEME=qt5ct
export VIMINIT='let $MYVIMRC = !has("nvim") ? "$XDG_CONFIG_HOME/vim/vimrc" : "$XDG_CONFIG_HOME/nvim/init.lua" | so $MYVIMRC'

export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'

[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx $XDG_CONFIG_HOME/X11/xinitrc -- vt1  &> /dev/null
