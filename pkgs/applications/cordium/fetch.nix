let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "Cordium";
    rev = "287b91a09c12f45f03807df196f4049b61b1ace4";
    sha256 = "0sysfgp9mffj5gyh6730yibpzz2j50yvkvba5hdcwr8874s1hqhm";
    fetchSubmodules = true;
  }