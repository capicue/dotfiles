# NixOS Notes

## Updating system configuration
```bash
sudo vim /etc/nixos/configuration.nix
sudo -i nixos-rebuild switch
```

## Listing packages

First column is attribute path, second column is nix name.

```bash
nix-env -qaP '*' --description
nix-env -f "<nixpkgs>" -qaP -A haskellPackages
```

# Collect garbage

```bash
nix-env --delete-generations old
nix-collect-garbage
```
