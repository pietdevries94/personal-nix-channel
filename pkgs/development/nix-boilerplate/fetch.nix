let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "af6f28e4dfbaa8a5baabefdee49d050a102a78a3";
    sha256 = "iWlWOlNjFY4LT1/OdqYFHfz3jLTT+7Ta7IfxGbntNxo=";
    fetchSubmodules = true;
  }
