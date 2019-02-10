#!/bin/bash

DIRECTORY="$HOME/.dotfiles"

if [ -d "$DIRECTORY" ]; then

    cp -v -f ~/.vimrc ~/.dotfiles/
    cp -v -f ~/.zshrc ~/.dotfiles/
    cp -v -f ~/.tmux.conf ~/.dotfiles/

    if [ -d "$ZSH/themes" ]; then 
       cp -v -f $ZSH/themes/michaelpass.zsh-theme ~/.dotfiles/
    else
        echo "ZSH themes directory not found. Please check Oh-My-ZSH installation."
    fi

else
    echo "~/.dotfiles not found. Please check installation location.\n"

fi
