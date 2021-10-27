let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "vinceliuice";
    repo = "Tela-icon-theme";
    rev = "bc8e7ffeeba6373d42b827ab2d44b86e1f119c7e";
    sha256 = "1lclq32yw3a3impig32vanjwwwnpil8961ifmbljwl13mgnrq7p2";
    fetchSubmodules = true;
  }
