let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "c4348d3edabef89a5753aa396e3cf3f4fa7012cf";
    sha256 = "03v7n6k7bb8r112grdpm15gjxa2i9qsj63ip8hawjhvxh96z5x5c";
    fetchSubmodules = false;
  }