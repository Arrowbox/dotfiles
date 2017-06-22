#!/bin/sh

# 2 lines to setup ZDOTDIR and source the real .zshenv
ln -s bootstrap.zsh $HOME/.zshenv

# Note special case of needing to use $HOME because
# XDG_*_HOME are not available yet
mkdir -p $HOME/.config/zsh
stow -v -t $HOME/.config/zsh config

mkdir -p $HOME/.config/zsh/.zprezto
stow -v -t $HOME/.config/zsh/.zprezto .zprezto
