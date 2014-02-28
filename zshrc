# This is my Zshell Config (A work in progress ...)
# ZSH path
ZSH=$HOME/.oh-my-zsh

# Zshell modules
autoload -U compinit promptinit colors && colors
compinit
promptinit

# Color prompt
#PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%#"
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

# ZSH theme 
ZSH_THEME="simple"

# Store last used commands
HISTFILE=~/.zhistory
setopt APPEND_HISTORY          # append rather than overwrite history file.
HISTSIZE=1200                  # lines of history to maintain memory
SAVEHIST=1000                  # lines of history to maintain in history file.
setopt HIST_EXPIRE_DUPS_FIRST  # allow dups, but expire old ones when I hit HISTSIZE
setopt EXTENDED_HISTORY        # save timestamp and runtime information

# Auto DIR
setopt AUTO_CD

# Sudo inserting at the start of the line (Using Alt+D)
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[d" insert-sudo

# Some aliases
# Ls aliases {{{
alias ls='ls --color'
# Dev aliases {{{
alias vz='vim ~/.zshrc'
alias sz='source ~/.zshrc'
# Xboard FICS {{{
alias xchess='xboard -ics -icshost freechess.org'
# Manjaro/Arch Aliases {{{
alias pS="sudo pacman -S"
alias pSyy="sudo pacman -Syy"
alias pSyu="sudo pacman -Syu"
alias pR="sudo pacman -R"
alias pRs="sudo pacman -Rs"
alias Yu="yaourt -Syua"
# Commonly edited dotfiles {{{
alias vXres="vim ~/.Xresources"
# Openbox rc.xml quick edit {{{
alias vobrc="vim ~/.config/openbox/rc.xml"
alias obrec="openbox --reconfigure"
# Ubuntu aliases {{{
#alias ppa='sudo add-apt-repository'
#alias au='sudo apt-get update'
#alias ai='sudo apt-get install'

# Debian packaging
#export DEBFULLNAME="Yusuf Felliaui"
#export DEBEMAIL="beebarss.saj.ma@gmail.com"

# Export EDITOR EV
export EDITOR="vim"

# Source Zsh
source $ZSH/oh-my-zsh.sh
