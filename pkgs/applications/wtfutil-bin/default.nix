{ pkgs }:

with pkgs;

stdenv.mkDerivation {
  pname = "wtfutil";
  version = "0.32.0";

  src = fetchurl {
    url = https://github.com/wtfutil/wtf/releases/download/v0.32.0/wtf_0.32.0_linux_amd64.tar.gz;
    sha256 = "17nfwgj2n2n575kjqdildjwn4ajgndjdjdq2kccvvw72q45hp7hs";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp wtfutil $out/bin
  '';
}
