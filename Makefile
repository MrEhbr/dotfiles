DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

.PHONY: install-bins
install-bins:
ifeq ($(shell uname -s),Linux)
	sudo apt-add-repository -y ppa:fish-shell/release-3
	sudo apt-get update && sudo apt-get install -y fish exa neovim tmux
endif
ifeq ($(shell uname -s),Darwin)
	brew update && brew install fish exa neovim tmux
endif
	sudo echo $(shell which fish) | sudo tee -a /etc/shells
	chsh -s $(shell which fish)

.PHONY:install-plugins
install-plugins:
	$(shell which fish) -c 'curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher'
	$(shell which fish) -c 'fisher install pure-fish/pure'
	$(shell which fish) -c 'fisher install acomagu/fish-async-prompt'
	$(shell which fish) -c 'fisher install jethrokuan/z'
ifeq ($(shell uname -s)),Linux)
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
ifeq ($(shell uname -s),Darwin)
	sh -c 'curl -fLo "$${XDG_DATA_HOME:-$$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'	
endif

.PHONY: link-configs
link-configs:
	ln -sf $(DIR)/fish/config.fish ~/.config/fish/config.fish
	ln -sf $(DIR)/fish/conf.d/tmux.fish ~/.config/fish/conf.d/tmux.fish
	ln -sf $(DIR)/nvim ~/.config
	ln -sf $(DIR)/tmux/.tmux.conf ~/.tmux.conf
	ln -sf $(DIR)/tmux/.tmux.conf.local ~/.tmux.conf.local

.PHONY: install
install: install-bins install-plugins link-configs