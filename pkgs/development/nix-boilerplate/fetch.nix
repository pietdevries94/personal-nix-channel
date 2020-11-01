let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "f53acbe12388499d556b9f972ac93eedea46efde";
    sha256 = "14mp4fk9ir50p5byikvccxgrrm635bq37yiqp811mh85dlm62qn3";
    fetchSubmodules = true;
  }