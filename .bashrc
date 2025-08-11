
bind "set completion-ignore-case on"
bind '"\e[5~": history-search-backward'
bind '"\e[6~": history-search-forward'

alias g='git'

# Aliasing 'g' to 'git' wouldn't be useful without autocompletion.
complete -o default -o nospace -F _git g
. /usr/share/bash-completion/completions/git 2> /dev/null
__git_complete g __git_main
