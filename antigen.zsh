source /usr/local/share/antigen/antigen.zsh



[ -e "${HOME}/.dotfiles/env" ] && source "${HOME}/.dotfiles/env"
[ -e "${HOME}/.dotfiles/spaceship-prompt" ] && source "${HOME}/.dotfiles/spaceship-prompt"


antigen bundle git
antigen bundle tmux
antigen bundle common-aliases
antigen bundle kubectl
antigen bundle zsh-users zsh-autosuggestions
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle tymm/zsh-directory-history
antigen bundle unixorn/docker-helpers.zshplugin
antigen bundle command-not-found
antigen bundle djui/alias-tips
antigen bundle bundler
antigen use oh-my-zsh

antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship
antigen apply