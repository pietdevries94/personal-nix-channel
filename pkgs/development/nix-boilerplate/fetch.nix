let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "1345d0050b61f1d50e1ef23f9e5fdc344ccebdbf";
    sha256 = "1f6azx8lqpsgbk416iwba3c4v84fikkjf3a1jmiyb6rj1d2l5n86";
    fetchSubmodules = true;
  }