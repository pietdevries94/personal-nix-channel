{ system ? builtins.currentSystem }:
let
  pkgs = import <nixpkgs> { inherit system; };
  self = in self
in rec {
  vscode = pkgs.callPackage ./pkgs/dev/rust-1.33 {
    inherit pkgs;
  };

  nodejs_9_10_0 = pkgs.callPackage ./pkgs/dev/node9.nix {
    inherit pkgs;
  };
  ...
}
