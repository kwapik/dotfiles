
bind "set completion-ignore-case on"
bind '"\e[5~": history-search-backward'
bind '"\e[6~": history-search-forward'

alias g='git'

# Aliasing 'g' to 'git' wouldn't be useful without autocompletion.
complete -o default -o nospace -F _git g
. /usr/share/bash-completion/completions/git 2> /dev/null
__git_complete g __git_main

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_DESCRIBE_STYLE="branch"
GIT_PS1_SHOWUPSTREAM="verbose git"

RED="\[\033[0;31m\]"
LYELLOW="\[\033[1;33m\]"
LGREEN="\[\033[1;32m\]"
WHITE="\[\033[0m\]"
LBLUE="\[\033[1;34m\]"

PS1="$LBLUE\w$LYELLOW\$(__git_ps1)$LGREEN\$ $WHITE"
export PROMPT_DIRTRIM=2
