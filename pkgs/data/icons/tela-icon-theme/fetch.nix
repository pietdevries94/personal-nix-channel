let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "vinceliuice";
    repo = "Tela-icon-theme";
    rev = "184959a91ed9726d7cbb3d55c627be09d302096f";
    sha256 = "mvkgHBdZm6vF+/DS3CRLl1m14U0Lj4Xtz4J/vpJUTQM=";
    fetchSubmodules = true;
  }
