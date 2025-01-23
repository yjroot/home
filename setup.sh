#!/bin/bash

CURRENT_DIR=$(pwd)

link_file() {
    local FILE="$1"
    local HOME_FILEPATH="$HOME/$FILE"
    local REPO_FILEPATH="$CURRENT_DIR/$FILE"
    if [ ! -L "$HOME_FILEPATH" ] ; then
        if [ -f "$HOME_FILEPATH" ] ; then
            echo "Backing up existing $HOME_FILEPATH to $HOME_FILEPATH.bak"
            mv "$HOME_FILEPATH" "$HOME_FILEPATH.bak"
        fi

        ln -s "$REPO_FILEPATH" "$HOME_FILEPATH"
        if [ $? -eq 0 ]; then
            echo "Successfully linked $REPO_FILEPATH to $HOME_FILEPATH"
        else
            echo "Failed to create symbolic link"
            exit 1
        fi
    else
        echo "Already linked."
    fi
}

# zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Install oh-my-zsh"
    export RUNZSH=no
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
link_file ".zshrc"

# tmux 
link_file ".tmux.conf"

# git
link_file ".gitconfig"

#exec zsh -l
