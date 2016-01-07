source ~/.profile

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# enables shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

setopt dvorak

# enable AWS CLI completion
source /usr/local/share/zsh/site-functions/_aws
