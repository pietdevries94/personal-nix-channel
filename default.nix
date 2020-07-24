{ system ? builtins.currentSystem }:
let
  pkgs = import <nixpkgs> { inherit system; };
  self = in self
in rec {
  vscode = pkgs.callPackage ./pkgs/applications/vscode/vscode {
    inherit pkgs;
  };
  vscodium = pkgs.callPackage ./pkgs/applications/vscode/vscodium {
    inherit pkgs;
  };
}
