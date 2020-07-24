{ system ? builtins.currentSystem }:
let
  pkgs = import <nixpkgs> { inherit system; };
in rec {
  vscode = pkgs.callPackage ./pkgs/applications/vscode/vscode.nix;
  vscodium = pkgs.callPackage ./pkgs/applications/vscode/vscodium.nix;
}
