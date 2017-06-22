#!/bin/sh

curl -fLo $XDG_DATA_HOME/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p $XDG_CONFIG_HOME/nvim

stow -v -t $XDG_CONFIG_HOME/nvim config
