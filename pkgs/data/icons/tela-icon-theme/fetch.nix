let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "vinceliuice";
    repo = "Tela-icon-theme";
    rev = "79a367f7982bc10d7aacb51b7ae63bd20d8f5bec";
    sha256 = "tnhu//q0Vl7MiMeHopB1Gwokkw/P+nDOo4HKizjxC0Y=";
  }
