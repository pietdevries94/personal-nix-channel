let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "vinceliuice";
    repo = "Tela-icon-theme";
    rev = "db7dde863def743afd6ba26a4c1ecd6dccd1ff08";
    sha256 = "W3gGn4ioTg/iOWTa5hfwx6FWzpFilpG8IXwaO5/YAvk=";
  }

