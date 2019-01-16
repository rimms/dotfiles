ROOT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

init:
	git submodule update --init

install: init
	@echo "export DOTDIR=\"$(ROOT_DIR)\"" > ~/.zshenv
	@echo "export ZDOTDIR=\"$(ROOT_DIR)/zsh\"" >> ~/.zshenv
	ln -snf "$(ROOT_DIR)/git/gitconfig" ~/.gitconfig
	ln -snf "$(ROOT_DIR)/git/gitignore" ~/.gitignore
	ln -snf "$(ROOT_DIR)/git/gitattributes" ~/.gitattributes
	mkdir -p ~/.vim/autoload
	ln -snf "$(ROOT_DIR)/vim/vim-plug/plug.vim" ~/.vim/autoload/plug.vim
	ln -snf "$(ROOT_DIR)/vim/vimrc" ~/.vimrc
	ln -snf "$(ROOT_DIR)/screenrc" ~/.screenrc

uninstall:
	rm -f ~/.zshenv
	rm -f ~/.gitconfig
	rm -f ~/.gitignore
	rm -f ~/.gitattributes
	rm -rf ~/.vim
	rm -f ~/.vimrc
	rm -f ~/.screenrc

upgrade:
	git submodule foreach git pull origin master
