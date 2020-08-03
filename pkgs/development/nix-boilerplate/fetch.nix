let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "7c312bfde3b257cbc9f706fa8a6ba34a2035e109";
    sha256 = "0l1i7bqfblmcljsavapx27mh5f1h5wvk3dd0rc72v426h6l5ab0n";
    fetchSubmodules = false;
  }