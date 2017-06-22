#!/bin/sh

binary_exists () {
    command -v "$1" > /dev/null 2>&1
}

if binary_exists nvim; then
    echo Already installed
    exit
fi

if ! grep -q "^deb .*neovim-ppa" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    echo Adding PPA
    add-apt-repository ppa:neovim-ppa/stable
fi

apt-get update
apt-get install neovim
