let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "Cordium";
    rev = "100c5cb0c1d57df02523622b7833c08b22d511f2";
    sha256 = "1x24xlda7bpqg3bbyphd58szbw04hxbhihnwf2kw3hglp8f724c5";
    fetchSubmodules = true;
  }