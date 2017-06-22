# Requirements
* stow
* curl

# Install

## ZSH
* Run `install_config.sh` in zsh
    * Symlinks bootstrap.zsh to ~/.zshenv
    * Symlinks zsh config files to XDG_CONFIG_HOME/zsh
    * Symlinks .zprezto to XDG_CONFIG_HOME/zsh/.zprezto

## Neovim
* Run `sudo install_package.sh` in nvim
    * Adds neovim-ppa/stable to apt
    * Installs neovim
* Run `install_config.sh` in nvim
    * Downloads plug.vim to neovim autoload in XDG_DATA_HOME
    * Symlinks neovim config files to XDG_CONFIG_HOME

## ToDo
* i3wm config files
* rofi config files

