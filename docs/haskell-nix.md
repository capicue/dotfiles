# Haskell Notes

## Find/Install Packages

Packages whose name begins with a haskell- prefix provide libraries
while those that do not provide only executables.

```bash
$ nix-env -f "<nixpkgs>" -qaP -A haskellPackages
$ nix-env -f "<nixpkgs>" -iA haskellPackages.Foo
```

alternatively,

```bash
$ nix-env -qaP -A nixos.haskellPackages
$ nix-env -iA nixos.haskellPackages.Foo
```

To find the system dependent path to nixpkgs, search for the path of a
well known package.

```bash
$ nix-env -qaP coreutils
nixos.coreutils coreutils-8.25
```

## Haskell Documentation

[index](file:///run/current-system/sw/share/doc/hoogle/index.html)

```bash
$ hoogle server -p 8080
```

## Build Environments

[documentation](http://nixos.org/nixpkgs/manual/#users-guide-to-the-haskell-infrastructure)
