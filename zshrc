source ~/.profile

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# enables shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi

# add hook for https://github.com/direnv/direnv
eval "$(direnv hook zsh)"

setopt dvorak
