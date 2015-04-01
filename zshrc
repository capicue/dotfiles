# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export EDITOR=vim
export PATH="/usr/local/bin:$PATH"
export PATH="/Users/capicue/.rbenv/bin:$PATH"
export PATH="/Users/capicue/.cabal/bin:$PATH"
export PATH="/Users/capicue/bin:$PATH"

# enables shims and autocompletion
eval "$(rbenv init -)"

alias be='bundle exec'
alias ghci="ghci -v0" # remove loading messages

setopt dvorak
