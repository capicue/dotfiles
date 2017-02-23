export EDITOR=vim
export PATH="/Users/capicue/.local/bin:$PATH"
export PATH="/Users/capicue/bin:$PATH"
export PATH="/sbin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/Users/capicue/.cabal/bin:$PATH"
export PATH=".cabal-sandbox/bin:$PATH"
export PATH="node_modules/.bin:$PATH"

alias be='bundle exec'
alias ghci="ghci -v0" # remove loading messages

export DOCKER_HOST=tcp://192.168.99.100:2376
export DOCKER_TLS_VERIFY=1
export DOCKER_CERT_PATH=/Users/capicue/.docker/machine/machines/default

# export NIX_PATH=/nix/var/nix/profiles/per-user/capicue/channels/nixos
# export NIX_PATH=nixpkgs=/Users/capicue/Code/github/NixOS/nixpkgs

if [ -e /Users/capicue/.nix-profile/etc/profile.d/nix.sh ];
  then . /Users/capicue/.nix-profile/etc/profile.d/nix.sh
fi

if type "nvm" > /dev/null; then
  export NVM_DIR=~/.nvm
  . $(brew --prefix nvm)/nvm.sh
fi
