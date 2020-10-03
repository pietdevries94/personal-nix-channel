let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "1de0157cd7d9a522c4a41be9b76b458493d48f97";
    sha256 = "115sz4bnxk03yg2slji9b6bkad3krrbzgxbwrq0x3cbnlbi1r53p";
  }