self: super:
rec {
  vscode = self.callPackage ./pkgs/applications/vscode/vscode.nix {};
  vscodium = self.callPackage ./pkgs/applications/vscode/vscodium.nix {};
  scientifica = self.callPackage ./pkgs/data/fonts/scientifica {};
  curie = self.callPackage ./pkgs/data/fonts/curie {};
}
