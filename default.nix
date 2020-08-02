with builtins;

let
  homeDir = getEnv "HOME";
in
{
  config ? let
    configFile = getEnv "NIXPKGS_CONFIG";
    configFile2 = homeDir + "/.config/nixpkgs/config.nix";
    configFile3 = homeDir + "/.nixpkgs/config.nix"; # obsolete
  in
    if configFile != "" && pathExists configFile then import configFile
    else if homeDir != "" && pathExists configFile2 then import configFile2
    else if homeDir != "" && pathExists configFile3 then import configFile3
    else {}
}:

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
