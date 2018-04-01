source /usr/share/git/completion/git-prompt.sh
export HISTCONTROL=ignoreboth

export VISUAL=vim
export EDITOR="$VISUAL"

export PROMPT_COMMAND="dbus-send --type=method_call --session --dest=net.launchpad.pantheon-terminal /net/launchpad/pantheon_terminal org.pantheon.terminal.ProcessFinished string:$PANTHEON_TERMINAL_ID string:"$(history 1 | cut -c 8-)" >/dev/null 2>&1;"
export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]$(__git_ps1 " (%s)"):\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

alias ls='ls --color=auto'
