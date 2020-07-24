{ system ? builtins.currentSystem, pkgs }:
rec {
  vscode = pkgs.callPackage ./pkgs/applications/vscode/vscode.nix {
    inherit pkgs;
  };
  vscodium = pkgs.callPackage ./pkgs/applications/vscode/vscodium.nix {
    inherit pkgs;
  };
}
