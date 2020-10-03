{ pkgs }:

let
  desktopItem = pkgs.makeDesktopItem rec {
    name = "cordium";
    exec = name;
    comment = "A messaging app in GTK and Rust";
    desktopName = "Cordium";
    categories = "Network;";
  };
in
pkgs.rustPlatform.buildRustPackage rec {
  pname = "cordium";
  version = "0.1.0-dev";

  src = import(./fetch.nix);

  buildInputs = with pkgs; [
    gtk3
    glib
    glib-networking
    libsoup
    webkitgtk
  ];

  nativeBuildInputs = with pkgs; [
    pkg-config
  ];

  cargoSha256 = "085msmq5pf24hig0hn2s409nnq2l2pc3x4djf486advmdd9sg2w7";
  verifyCargoDeps = true;

  postInstall = ''
    ln -s ${desktopItem}/share $out/share
  '';

  meta = with pkgs.stdenv.lib; {
    description = "Cordium is a messaging app in GTK and Rust";
    homepage = https://github.com/pietdevries94/Cordium;
    license = licenses.mit;
    platforms = platforms.linux;
  };
}