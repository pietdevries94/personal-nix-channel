let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "vinceliuice";
    repo = "Tela-icon-theme";
    rev = "902f0b5020cb0ee3b407c83498e8357c0ae5b67e";
    sha256 = "qlt9jv3lCPVFBeN4aQd4r9NE0YAxWQavMoo13cvhv6E=";
    fetchSubmodules = true;
  }
