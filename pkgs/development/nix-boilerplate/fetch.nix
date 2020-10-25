let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "d3751f71371e246c938555ddf9ea11b570803dee";
    sha256 = "0c3hgm29isnsfa4qx1yjgsa4lk3milffd9g2rlmsnw2m5kh0d6n4";
    fetchSubmodules = true;
  }