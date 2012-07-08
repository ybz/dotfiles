# history
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=2000
INC_APPEND_HISTORY=true

# prompt
autoload -U colors && colors
PROMPT="[%(?.%{%b%s%u%}.%S)%n@%m: %* %{$fg[yellow]%}%.%{$reset_color%}] %% "

# aliases
alias ls="ls --color=auto"
alias rmpyc='find . -type f -name "*.pyc" -exec rm -f {} \;'

# git
alias gs="git status"

# completion
autoload -U compinit
compinit
