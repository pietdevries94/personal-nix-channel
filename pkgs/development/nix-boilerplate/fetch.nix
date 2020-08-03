let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "65b69160bedf495e1776405d44aeb57b3ed96f6e";
    sha256 = "1cgaynblxhhshkr9l1ysv5x6l1a33gky5xcqz88vxpvdd5gr9wnx";
    fetchSubmodules = false;
  }