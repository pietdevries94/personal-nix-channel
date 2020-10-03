let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "Cordium";
    rev = "842f581d316e25cd91f4bc5caabe94630b9bc7df";
    sha256 = "1krrqg774g1v5ix3bpq0zg1bw2pmk6prjczch4k3j4wiqxfp330m";
    fetchSubmodules = true;
  }