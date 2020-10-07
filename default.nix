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
  
  inherit (pkgs) callPackage;
in rec {
  # applications
  vscode = callPackage ./pkgs/applications/vscode/vscode.nix {
    inherit pkgs;
  };

  # The update script for vscodium breaks often and I don't use it, so I have disabled it for now
  # vscodium = callPackage ./pkgs/applications/vscode/vscodium.nix {
  #   inherit pkgs;
  # };
  
  cordium = callPackage ./pkgs/applications/cordium {
    inherit pkgs;
  };
  
  wtfutil-bin = callPackage ./pkgs/applications/wtfutil-bin {
    inherit pkgs;
  };

  # fonts and themes
  scientifica = callPackage ./pkgs/data/fonts/scientifica {};
  curie = callPackage ./pkgs/data/fonts/curie {};
  tela-icon-theme = callPackage ./pkgs/data/icons/tela-icon-theme {
    inherit pkgs;
  };

  #devtools
  nix-boilerplate = callPackage ./pkgs/development/nix-boilerplate {};
  mkYarnDist = callPackage ./pkgs/development/mkYarnDist {
    inherit pkgs;
  };
}
