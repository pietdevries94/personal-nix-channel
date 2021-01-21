let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "vinceliuice";
    repo = "Tela-icon-theme";
    rev = "77568c6b0877320b61e80ff6c1b653135a6f139b";
    sha256 = "0gphy4aq2qjcg79k6rc0q5901mn3q76qhckn5vxvmypn9n3lb9ph";
    fetchSubmodules = true;
  }
