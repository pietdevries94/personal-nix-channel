let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "Cordium";
    rev = "c72c90105719efae51ccb775a9203250ff1b06f8";
    sha256 = "0yn3zkk9wfgzlncdha3xzrc1757fvrppkpi0dbqssxpbnkpdngf0";
    fetchSubmodules = true;
  }