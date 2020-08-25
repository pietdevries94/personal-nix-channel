let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "9f9322c58291a47671c59693f4ff21400b502948";
    sha256 = "0jgdxc9fbd52y9pqsiwwa5c67spa879brf32fd737bdbwz1n5z5s";
    fetchSubmodules = false;
  }