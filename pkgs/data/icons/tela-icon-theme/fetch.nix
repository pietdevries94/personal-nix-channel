let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "vinceliuice";
    repo = "Tela-icon-theme";
    rev = "1389a68c894fec1f5798fe8b76edf77fb4ab1528";
    sha256 = "SW4MNvtrHpJm6yiS9k11XzzzGSMXdZ71cnvASK1dzno=";
  }

