let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "Cordium";
    rev = "7aa8aeebf8a36c359b53ced35f01d96a33289d88";
    sha256 = "18wgh5gr7mgzzqx9w9mvd52jgim2hjqp27n0qkndiam106s531qy";
  }