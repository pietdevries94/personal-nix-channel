let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "Cordium";
    rev = "bebc48f4e559822255f203d618c03a114f21b802";
    sha256 = "N7XZ4opWmWZKpzJFAYaddWBSmCSzIcVBesIF6QFQPBM=";
  }

