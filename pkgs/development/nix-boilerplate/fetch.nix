let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "7669291f0802fddae2ce022a95ade0baa044a537";
    sha256 = "04j562yrc3lc9hddgv4fl290p0zw19hbn5by8s7zwkflxa8x2f2d";
    fetchSubmodules = false;
  }