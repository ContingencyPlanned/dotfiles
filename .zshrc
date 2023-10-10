# ~/.zshrc

# Alias
alias ardour="/home/connor/downloads/app/ardour/gtk2_ardour/ardev"
alias muvluv="wine '/home/connor/.wine/drive_c/Program Files (x86)/Muv-Luv/muvluv16.exe'"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/dotfiles --work-tree=$HOME'
alias etcconfig="/usr/bin/git --git-dir=$HOME/.dotfiles/etcdotfiles --work-tree=/"

# Variables
export BROWSER="chromium"
export EDITOR="nvim"
export PATH="$PATH:/home/connor/.local/bin"

# Autosuggestions & Highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Command Completion
autoload -Uz compinit
compinit

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

# Prompt
autoload -Uz promptinit
promptinit

PROMPT='%F{63}%n%f%F{147}@%F{229}%m%f %F{105}%B%~%b%f '
