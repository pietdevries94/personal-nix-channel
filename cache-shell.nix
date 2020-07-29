{ system ? builtins.currentSystem }:
let
  pkgs = import <nixpkgs> { inherit system; overlays = [
    (import ./default.nix)
  ]; };
in pkgs.mkShell {
  name = "cache";
  buildInputs = with pkgs;
    [
      vscode
      vscodium
      scientifica
      curie
    ];
}