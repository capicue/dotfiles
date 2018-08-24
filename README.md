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

## Add a Vim plugin

```bash
$ cd vim/bundle
$ git submodule add git@github.com:scrooloose/nerdcommenter.git
$ cd ../..
$ rcup -v
```

## Update submodules

```bash
$ git submodule foreach git pull
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
