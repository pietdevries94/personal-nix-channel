let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "vinceliuice";
    repo = "Tela-icon-theme";
    rev = "922d60d76208db2341865548db7eac0505434ba3";
    sha256 = "0wlh6z1m0gz6bbi5grfdfd2hf02h9gbb6m4ra2glaxk3wnc1zzrl";
    fetchSubmodules = true;
  }
