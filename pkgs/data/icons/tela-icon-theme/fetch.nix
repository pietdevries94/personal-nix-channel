let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "vinceliuice";
    repo = "Tela-icon-theme";
    rev = "3ee5c397ed750db9684e303224f476e8d87c377d";
    sha256 = "121fnhgqlw3l7wxdg991vxsrgw4sn1pcndngsgs1nh5n3f93f2xa";
  }