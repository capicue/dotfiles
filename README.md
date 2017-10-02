# dotfiles

These dotfiles are managed with [rcm](https://github.com/thoughtbot/rcm).


## Setup

1. Install rcm.

2. Clone this repository and fetch the submodules.
    ```bash
    $ git clone git@github.com:capicue/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles
    $ git submodule init
    $ git submodule update
    ```

3. Build vimproc's native extensions
    ```bash
    $ cd vim/bundle/vimproc.vim
    $ make
    $ cd ../../..
    ```

4. Link the dotfiles
    ```bash
    $ rcup -v
    ```


## Other things to install

- ack
- zsh
- nvm
- macvim
- xcode
- elm-format
- kaleidoscope & ksdiff
- [input font](http://input.fontbureau.com/)
- `brew cask install haskell-platform`
- `cabal install ghc-mod`


### OS X only

- ghc with global packages
    ```bash
    $ nix-env -iA nixpkgs.myHaskellEnv
    ```
- rbenv
- reattach-to-user-namespace
- tmux
- open Tomorrow.terminal and set to default


### NixOS only

- dmenu
- linuxPackages.virtualboxGuestAdditions
- ruby
- vim
- xmonad


## Miscellaneous setup

On OS X, change Terminal.app's starting command to zsh.


## Add a Vim plugin

```bash
$ cd vim/bundle
$ git submodule add git@github.com:scrooloose/nerdcommenter.git
$ cd ../..
$ rcup -v
```


## Managing dotfiles

- Put existing dotfile under rcm management
    ```bash
    $ mkrc ~/.bashrc
    ```

- Update symlinks
    ```bash
    $ rcup -v
    ```
