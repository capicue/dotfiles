source ~/.profile

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# enables shims and autocompletion
if command -v rbenv &> /dev/null; then eval "$(rbenv init - zsh)"; fi
if command -v pyenv &> /dev/null; then eval "$(pyenv init -)"; fi

# add hook for https://github.com/direnv/direnv
if command -v direnv &> /dev/null; then eval "$(direnv hook zsh)"; fi

if command -v gem &> /dev/null
then
  LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
  if [ -f $LUNCHY_DIR/lunchy-completion.zsh ]; then
    . $LUNCHY_DIR/lunchy-completion.zsh
  fi
fi

# configure homebrew completions
if command -v brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

TERM=screen-256color

setopt dvorak
