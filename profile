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

# export NIX_PATH=/nix/var/nix/profiles/per-user/capicue/channels/nixos
# export NIX_PATH=nixpkgs=/Users/capicue/Code/github/NixOS/nixpkgs

if [ -e /Users/capicue/.nix-profile/etc/profile.d/nix.sh ];
  then . /Users/capicue/.nix-profile/etc/profile.d/nix.sh
fi

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/capicue/google-cloud-sdk/path.zsh.inc' ];
  then source '/Users/capicue/google-cloud-sdk/path.zsh.inc';
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/capicue/google-cloud-sdk/completion.zsh.inc' ];
  then source '/Users/capicue/google-cloud-sdk/completion.zsh.inc';
fi
