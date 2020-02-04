source /usr/local/share/antigen/antigen.zsh



[ -e "${HOME}/.dotfiles/env" ] && source "${HOME}/.dotfiles/env"
[ -e "${HOME}/.dotfiles/theme" ] && source "${HOME}/.dotfiles/theme"

antigen use oh-my-zsh
antigen bundle brew
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle docker
antigen bundle docker-compose
antigen bundle git
antigen bundle golang
antigen bundle tmux
antigen bundle zsh-users
antigen bundle zsh-autosuggestions
antigen bundle zdharma/fast-syntax-highlighting
antigen bundle tymm/zsh-directory-history
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply
