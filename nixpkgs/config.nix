# To install this globally,
# $ nix-env -iA nixpkgs.myHaskellEnv
#
{
  packageOverrides = super:
    let
      self = super.pkgs;
    in
      {
        myHaskellEnv =
          self.haskellPackages.ghcWithPackages
          (
            haskellPackages: with haskellPackages;
            [ hscolour pretty-show ghc-mod ]
          );
      };
}
