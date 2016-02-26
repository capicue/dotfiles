# dotfiles

These dotfiles are managed with [rcm](https://github.com/thoughtbot/rcm).

## Installation

### rcm
```bash
$ brew tap thoughtbot/formulae
$ brew install rcm
```

### zsh
```bash
$ brew install zsh
$ cd ./zprezto
$ git submodule init
$ git submodule update
$ rcup -v
```

### tmux
```bash
$ brew install reattach-to-user-namespace
$ brew install tmux
```

Then change Terminal.app's starting command to `/usr/local/bin/zsh`.

### Janus
```bash
$ curl -Lo- https://bit.ly/janus-bootstrap | bash
```

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
$ brew install ack
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
