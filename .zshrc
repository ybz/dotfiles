# prompt
autoload -U colors && colors
PROMPT="[%(?.%{%b%s%u%}.%S)%m:%{$fg[yellow]%}%.%{$reset_color%}] %% "

# aliases
alias ls="ls --color=auto"

# git
alias gs="git status"

