export PATH=/usr/local/bin:$HOME/bin:$PATH
export TERM="xterm-256color"

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=5000
setopt autocd
bindkey -e
zstyle :compinstall filename '/Users/aleksey.burmistrov/.zshrc'

autoload -Uz compinit
compinit

# plugins=(docker history kubectl dircycle tmux zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

autoload -U compinit && compinit

ZSH_TMUX_AUTOSTART=${ZSH_TMUX_AUTOSTART:-true}

export LANG=en_US.UTF-8

alias zshconfig="vi ~/.zshrc"

source $HOME/.dotfiles/antigen.zsh
