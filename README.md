# Requirements
* stow
* curl

# Install

## Neovim
* Run `sudo install_package.sh` in nvim
    * Adds neovim-ppa/stable to apt
    * Installs neovim
* Run `install_config.sh` in nvim
    * Downloads plug.vim to neovim autoload in XDG_DATA_HOME
    * Symlinks neovim config files to XDG_CONFIG_HOME
