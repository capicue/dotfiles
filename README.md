# Managing dotfiles

Add new rc files with `mkrc`.

```bash
$ mkrc ~/.bashrc
```

Update symlinks

```bash
$ rcup -v
```

# Vim

## Janus

Use `~/.vimrc.before` and `~/.vimrc.after` for customization.

To update Janus, run `rake` inside the `~/.vim` directory.

Add plugins into the `~/.janus` directory.

```bash
$ cd ~/.janus
$ git submodule add https://github.com/vim-scripts/Rename2.git rename2
```
