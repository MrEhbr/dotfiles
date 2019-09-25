
export PATH=$HOME/bin:/usr/local/bin:$PATH
export TERM="xterm-256color"

# plugins=(docker history kubectl dircycle tmux zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

autoload -U compinit && compinit

ZSH_TMUX_AUTOSTART=true

export LANG=en_US.UTF-8

alias zshconfig="nano ~/.zshrc"
# MS visual code
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

source $HOME/.dotfiles/antigen.zsh
