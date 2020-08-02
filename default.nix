{ config ? {} }:
let
  pkgs = import <nixpkgs> { inherit config; };
in rec {
  vscode = pkgs.callPackage ./pkgs/applications/vscode/vscode.nix {
    inherit pkgs;
  };
  vscodium = pkgs.callPackage ./pkgs/applications/vscode/vscodium.nix {
    inherit pkgs;
  };
  scientifica = pkgs.callPackage ./pkgs/data/fonts/scientifica { };
  curie = pkgs.callPackage ./pkgs/data/fonts/curie { };
}
