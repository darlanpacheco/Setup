PS1="\[\e[32m\]\u \[\e[0m\]on \[\e[34m\]\w\n \[\e[0m\]> "

alias ls="ls --color=auto"
alias c="clear"
alias e="exit"

alias suy="sudo pacman -Suy --needed --noconfirm"
alias ss="pacman -Ss"
alias r="sudo pacman -R --noconfirm"

alias or="ollama run"

alias dc="sudo docker"

alias ga="git add -i"
alias gc="git commit -m"
alias gp="git push"

alias fr="flutter run"
alias dr="dotnet run"

export PATH="$PATH:$HOME/Paths/flutter/bin"
