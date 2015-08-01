export EDITOR=vim
export PATH="/Users/capicue/.rbenv/bin:$PATH"
export PATH="/Users/capicue/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

# enables shims and autocompletion
eval "$(rbenv init -)"

alias be='bundle exec'

LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.bash ]; then
  . $LUNCHY_DIR/lunchy-completion.bash
fi
