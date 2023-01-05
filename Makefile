DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

.PHONY: install-bins
install-bins:
ifeq ($(shell uname -s),Linux)
	sudo apt-add-repository -y ppa:fish-shell/release-3
	sudo apt-get update && sudo apt-get install -y fish exa neovim
endif
ifeq ($(shell uname -s),Darwin)
	brew update && brew install fish exa neovim reattach-to-user-namespace
endif
	sudo echo $(shell which fish) | sudo tee -a /etc/shells
	chsh -s $(shell which fish)

.PHONY:install-plugins
install-plugins:
	$(shell which fish) -c 'curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher'
	$(shell which fish) -c 'fisher install pure-fish/pure'
	$(shell which fish) -c 'fisher install acomagu/fish-async-prompt'
	$(shell which fish) -c 'fisher install jhillyerd/plugin-git'

.PHONY: link-configs
link-configs:
	ln -sf $(DIR)/fish/config.fish ~/.config/fish/config.fish
	ln -sf $(DIR)/fish/conf.d/* ~/.config/fish/conf.d/
	ln -sf $(DIR)/nvim ~/.config

.PHONY: install-nvim-plugins
install-nvim-plugins:
	nvim +PackerInstall +qa

.PHONY: git-configs
git-configs:
	ln -sf $(DIR)/.gitignore-global ~/.gitignore-global
	git config --global core.excludesfile ~/.gitignore-global
	git config --global push.autoSetupRemote true
	git config --global push.default nothing

.PHONY: install
install: install-bins install-plugins link-configs install-nvim-pluginss git-configs
