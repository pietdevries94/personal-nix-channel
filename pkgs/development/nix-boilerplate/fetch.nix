let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "6cb81a6411531ee4cf620cf5efd4325b800b3098";
    sha256 = "0f6qz40jr9im2c76zplrwwh2cr8a1285ig4397cxhl0w1bzc6jzr";
  }