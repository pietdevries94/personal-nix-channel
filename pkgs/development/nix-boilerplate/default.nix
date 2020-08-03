{ stdenv }:

stdenv.mkDerivation rec {
  name = "nix-boilerplate";

  src = import(./fetch.nix);

  installPhase = ''
    mkdir -p $out
    cp -r * $out
  '';
}