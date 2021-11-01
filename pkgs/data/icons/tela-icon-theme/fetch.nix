let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "vinceliuice";
    repo = "Tela-icon-theme";
    rev = "bc8e7ffeeba6373d42b827ab2d44b86e1f119c7e";
    sha256 = "4h6c7asjUC7pqi4GkxCN13LOpVVbjBdvjUMN7sXAlNE=";
    fetchSubmodules = true;
  }
