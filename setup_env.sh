#!/bin/bash

showLoading() {
	loadingText=$1

	echo -ne "$loadingText\r "
	while kill -0 $! &>/dev/null; do
		echo -ne "\r\033[K"
		echo -ne "${WHITE}$loadingText .\r"
		sleep 0.5
		echo -ne "${WHITE}$loadingText ..\r"
		sleep 0.5
		echo -ne "${WHITE}$loadingText ...\r"
		sleep 0.5
		echo -ne "\r\033[K"
		echo -ne "${WHITE}$loadingText \r"
		sleep 0.5
	done
	echo "${WHITE}"
}

setup() {
	(cat vimrc >> ~/.vimrc & showLoading "vimrc settings")
	# brew
	(sh -c "$(curl -fsSL https://raw.githubusercontent.com/Tolsadus/42homebrewfix/master/install.sh)" & showLoading "Installing Brew")
	source ~/.zshrc
	# oh-my-zsh
	(sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" & showLoading "Install oh-my-zsh")
	source ~/.zshrc
	# gitall
	(cat gitall >> ~/.zshrc & showLoading "adding gitall")
	source ~/.zshrc
	# valgrind
	(brew install --HEAD valgrind & showLoading "Installing valgrind")
	source ~/.zshrc
	(osascript ./dark_mode.scpt & showLoading "Changing theme to dark mode")
	(osascript ./open_mouse.scpt & showLoading "Opening mouse settings")
	echo "Settings setup completed"
}

setup
