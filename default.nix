{ system ? builtins.currentSystem }:
let
  pkgs = import <nixpkgs> { inherit system; };
  self = in self
in rec {
  vscode = pkgs.callPackage ./pkgs/applications/vscode/vscode.nix {
    inherit pkgs;
  };
  vscodium = pkgs.callPackage ./pkgs/applications/vscode/vscodium.nix {
    inherit pkgs;
  };
}
