# Useful commands for terminal \(WeThinkCode\_\)

Collection of useful commands created by myself for better vim/terminal experience

#### note: this was tested on zsh shell and can't confirm for other shells

## EASY GIT

gitall file has the needed functions for a one click git solution for auto add/commit/push
to use it add the contents of gitall file into zshrc file.

install:
```
cat gitall >> ~/.zshrc
source ~/.zshrc
```

run:
```
gitall
```

## CUSTOM VIM SETTINGS

These settings are done in the vimrc because of admin right issues at campus not allowing
us to install custom themes in the vim directory. The vimrc file has a Molokai theme, it remembers
cursor position and a file is saved for undo/redo history when a file is closed.

install
```
cat vimrc >> ~/.vimrc
```

## CUSTOM VIM SETTINGS

one click setup solution for mac. Setup changes them to dark mode, installs brew fix, installs oh-my-zsh, add vimrc settings, 
adds gitall command and installs valgrind

run:
```
./setup_env.sh
```

## Highlight swift syntax in vim

To get swift recognized in vim run the following
```
./swift.sh
```

#### note: this was setup to set settings according to my preference
