let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "Cordium";
    rev = "bebc48f4e559822255f203d618c03a114f21b802";
    sha256 = "04rwa00yj1f2g90wa8dk4jc54q3mkn302i9jlx56d6anibidkd9p";
    fetchSubmodules = true;
  }