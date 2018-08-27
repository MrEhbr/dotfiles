
export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"

# plugins=(docker history kubectl dircycle tmux zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

autoload -U compinit && compinit

ZSH_TMUX_AUTOSTART=true

export LANG=en_US.UTF-8

alias zshconfig="nano ~/.zshrc"

source $HOME/.dotfiles/antigen.zsh