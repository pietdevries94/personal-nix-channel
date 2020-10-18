let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "b51ee03f0c0671a1aead01e7628bd05f3d972b26";
    sha256 = "0p5mbcr78k2b9d6fmr0b43pwnnrwb63lwcp2q7knxwpmbhz24ls5";
    fetchSubmodules = true;
  }