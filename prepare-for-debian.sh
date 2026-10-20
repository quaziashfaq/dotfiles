#!/bin/bash

TRUE=1
FALSE=0

# This one-liner reliably gets the absolute path of the script's directory.
SCRIPT_DIR=$(
  # Change to the directory of the script's path (BASH_SOURCE[0])
  cd -- "$(dirname -- "${BASH_SOURCE[0]}")" >/dev/null 2>&1 &&
  # Print the absolute path of that directory
  pwd -P
)
#echo "The script's physical directory is: $SCRIPT_DIR"

# Function to test if an app is installed.
# If not, install it.

check_if_app_installed() {
    app_name=$1
    if [[ -z $app_name ]]; then
        echo "You should call this function with an app name to install"
        exit 1;
    else
        if command -v $app_name > /dev/null 2>&1; then
            echo "${app_name} is installed!"
        else
            echo "Installing ${app_name}..."
            set -x
            sudo apt install curl
            set +x
        fi
    fi
}

# Install vim
check_if_app_installed "vim"

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi

ln -s "${SCRIPT_DIR}"/vim/vimrc ~/.vimrc

# Install curl
check_if_app_installed "curl"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s "${SCRIPT_DIR}"/vim/after ~/.vim/after


# Adding tmux
check_if_app_installed "tmux"
mkdir -p $XDG_CONFIG_HOME/tmux/ > /dev/null 2>&1

if [ -f $XDG_CONFIG_HOME/tmux/tmux.conf ]; then
    mv $XDG_CONFIG_HOME/tmux/tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf.bak
fi
ln -s "${SCRIPT_DIR}"/tmux/tmux.conf $XDG_CONFIG_HOME/tmux/tmux.conf


