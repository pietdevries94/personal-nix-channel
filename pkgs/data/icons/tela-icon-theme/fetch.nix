let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "vinceliuice";
    repo = "Tela-icon-theme";
    rev = "c52016cd2be237bc6e94092b55e82ec3abdcd336";
    sha256 = "XKNSCWwanm2dP002TY/mE4SDX13TllHrbrb55V4wLSQ=";
  }
