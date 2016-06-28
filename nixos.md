# NixOS Notes

## Updating system configuration
```bash
sudo vim /etc/nixos/configuration.nix
sudo -i nixos-rebuild switch
```

## Listing packages
```bash
nix-env -qaP '*' --description
nix-env -f "<nixpkgs>" -qaP -A haskellPackages
```

## Virtualbox
```bash
sudo ls /media/sf_Shared
```

## Pass (passwordstore.org)
```
pass init "Stacey Touset <capicue@gmail.com>"
pass insert Email/capicue.gmail
pass Email/capicue.gmail
```

## XMonad
```bash
vim ~/.xmonad/xmonad.hs
xmonad --recompile
```
