let
  pkgs = import <nixpkgs> {};
in
  pkgs.fetchFromGitHub {
    owner = "pietdevries94";
    repo = "nix-boilerplate";
    rev = "eaaaf20bb34e48563dfc6aa98b8263b50479510e";
    sha256 = "1gad8xa54zalcjxpcfb1ymdybsbi52qyyirlpr5ck6bb3r5qvv0i";
    fetchSubmodules = false;
  }