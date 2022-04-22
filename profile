export EDITOR=/usr/bin/nvim

# Alias
alias exa="exa --icons"
alias lt="exa -T"
alias ls="exa"
alias la="ls -al"
alias ll="ls -l"
alias l="ls -ll1"

alias top="btop"

# swap escape and caps lock
setxkbmap -option caps:swapescape

# enable Rusts cargo
. "$HOME/.cargo/env"
