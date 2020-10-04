let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "7171fe63e6f80d2c89a31c72648b73542596996b";
    sha256 = "0h8qw5c8lmi5g8chbq546rzdki8m7nfhx4v2y9cwwfzzainf2y0n";
    fetchSubmodules = true;
  }