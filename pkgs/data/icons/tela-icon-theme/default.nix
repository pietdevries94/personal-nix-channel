{ stdenv, fetchzip, mkfontdir, gtk3, pkgs }:

let
  src = import ./fetch.nix;
  version = import ./version-name.nix;
in
stdenv.mkDerivation rec {
  inherit version src;
  pname = "tela-icon-theme";

  nativeBuildInputs = [ gtk3 ];
  buildInputs = [ pkgs.bash ];
  
  # there are only images in the package
  dontFixup = true;

  installPhase = ''
    mkdir -p $out/share/icons
    bash ./install.sh -a -d $out/share/icons

    for theme in $out/share/icons/*; do
      gtk-update-icon-cache $theme
    done
  '';

  meta = with stdenv.lib; {
    description = "A flat colorful Design icon theme";
    homepage = https://github.com/vinceliuice/Tela-icon-theme;
    license = licenses.gpl3;
    platforms = platforms.linux;
  };
}
