let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "d83baa177024efab32b7af78502e34b80563f3e0";
    sha256 = "1njl7py6vqnabn8av1kmp4381r5nx5s1s1mhz5fix1d76yy3c09g";
    fetchSubmodules = false;
  }