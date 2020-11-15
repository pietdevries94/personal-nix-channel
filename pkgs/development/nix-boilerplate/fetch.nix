let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "af6f28e4dfbaa8a5baabefdee49d050a102a78a3";
    sha256 = "06ipxnwikwc7xkdb9yyknj6ggz0x0nk7dkjz9w5qw5b3acx5csc9";
    fetchSubmodules = true;
  }