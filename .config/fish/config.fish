if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path /opt/homebrew/bin

alias fishconfig="nvim ~/.config/fish/config.fish"

# File system
alias ls="eza -F --group-directories-first --color=always --icons"
alias la="eza -alF --group-directories-first --color=always --icons"
alias ll="eza -alF --group-directories-first"
alias lt="eza -aTF --level=2 --group-directories-first --color=always --icons"
alias ldot='eza -a | rg "^\."'

# Directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Tools
alias vi="nvim"
alias vim="nvim"
alias cat="bat"
alias grep="rg"
alias g="git"
alias lzg="lazygit"
alias lzd="lazydocker"
alias ff="fzf --preview 'bat --style=numbers --color=always {}'"

# Git
alias gp="git push"
alias gpf="git push --force"
alias gpl="git pull"
alias gpls="git pull --recurse-submodules"
alias gst="git stash"
alias gstp="git stash pop"
alias gs="git switch"
alias gsc="git switch -c"
alias gco="git checkout"
alias grb="git rebase"
alias gcm="git commit -m"
alias gcan="git commit --amend --no-edit"

# Zig
alias zb="zig build"
alias zbr="zig build run"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

set -gx EDITOR nvim
set fish_greeting

starship init fish | source
zoxide init fish | source
alias cd="z"

# Created by `pipx` on 2024-07-12 16:56:38
set PATH $PATH /Users/ethan/.local/bin
