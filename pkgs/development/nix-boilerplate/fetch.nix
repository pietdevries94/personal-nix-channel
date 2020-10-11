let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "b5c7abc57d35cab89e446e83055f70d8c0024058";
    sha256 = "0ajkxn657x7gh17f7d9225a1515zfqfzzm3rkvdm1naj015p0ck8";
    fetchSubmodules = true;
  }