let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "2dfb5e70b54ef9aedec1bdcee7f51682285bf28b";
    sha256 = "0h411j1djq458fg6bhbq5a45xsqnm8ll4sqzzsmivv7qp79w4rp9";
    fetchSubmodules = false;
  }