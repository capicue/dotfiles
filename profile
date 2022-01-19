export EDITOR=vim

if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
if [ -d "/opt/homebrew/bin" ] ; then
  PATH="/opt/homebrew/bin:$PATH"
fi

PATH="node_modules/.bin:$PATH"
PATH="/sbin:$PATH"
PATH="/usr/sbin:$PATH"
PATH="/usr/local/bin:$PATH"

alias be='bundle exec'
alias ghci="ghci -v0" # remove loading messages

# export NIX_PATH=/nix/var/nix/profiles/per-user/capicue/channels/nixos
# export NIX_PATH=nixpkgs="$HOME/Code/github/NixOS/nixpkgs"

if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ];
  then . "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi

export NVM_DIR="$HOME/.nvm"

[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ];
  then source "$HOME/google-cloud-sdk/path.zsh.inc";
fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ];
  then source "$HOME/google-cloud-sdk/completion.zsh.inc";
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/Desktop/google-cloud-sdk/path.zsh.inc" ];
  then . "$HOME/Desktop/google-cloud-sdk/path.zsh.inc";
fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/Desktop/google-cloud-sdk/completion.zsh.inc" ];
  then . "$HOME/Desktop/google-cloud-sdk/completion.zsh.inc";
fi
