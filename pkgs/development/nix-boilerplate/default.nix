{ stdenv }:

stdenv.mkDerivation rec {
  name = "nix-boilerplate";

  src = import(./fetch.nix);

  installPhase = ''
    mkdir -p $out
    cp -r * $out
    sed -i "s~STOREPATH~$out~g" $out/bin/nix-boilerplate
  '';
}