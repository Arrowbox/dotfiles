. $ZDOTDIR/invoke.zsh
. $ZDOTDIR/python.zsh
. $ZDOTDIR/gpg.zsh
. $ZDOTDIR/functions.zsh

- [ -f $ZDOTDIR/fitbit.zsh ] && source $ZDOTDIR/fitbit.zsh

unset EDITOR
# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
export PATH=~/Fitbit/git/dotfiles/bin:$PATH

- [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(direnv hook zsh)"
