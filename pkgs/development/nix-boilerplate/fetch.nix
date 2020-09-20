let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "030e2f91e5da8610f93cd41d8bcad0d6d44b8c0e";
    sha256 = "14md5pfk499m94210s7lmlg556h24sikwb7il4aj3vvggfdyn6g6";
    fetchSubmodules = true;
  }