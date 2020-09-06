let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "c9343f83ab0d38ec94912e8a04f3c807a36d90f5";
    sha256 = "0r6fvizqf0hfaa22xqxxxsra63g368dp5vf6gxd018yxwxkvyqnw";
    fetchSubmodules = false;
  }