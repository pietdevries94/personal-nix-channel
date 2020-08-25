let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "e5224cf032c5ee694ec0f5992ed11805accce126";
    sha256 = "1rrdz074bf3cl5l2m7r03rpjhrcdalbl9vaifi7g2sczps7rz787";
    fetchSubmodules = false;
  }