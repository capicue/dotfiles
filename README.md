# dotfiles

These dotfiles are managed with [rcm](https://github.com/thoughtbot/rcm).

## Installation

### rcm
```bash
$ nix-env -i rcm
```

### zsh
```bash
$ nix-env -i zsh
$ cd ./zprezto
$ git submodule init
$ git submodule update
$ rcup -v
```

### tmux
```bash
$ nix-env -i reattach-to-user-namespace
$ nix-env -i tmux
```

Then change Terminal.app's starting command to `/Users/capicue/.nix-profile/bin/zsh`.

### ruby
```bash
$ brew install rbenv
$ brew install ruby-build
$ rbenv install -l
$ rbenv install <latest version>
$ rbenv global <lastest version>
```

### Haskell
```bash
$ cabal install happy
$ cabal install pretty-show
$ cabal install HsColour
```

### other
```bash
$ nix-env -iA nixpkgs.ack
```

## Management

Add new rc files with `mkrc`.

```bash
$ mkrc ~/.bashrc
```

Update symlinks

```bash
$ rcup -v
```
