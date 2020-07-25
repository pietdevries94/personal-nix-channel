{ stdenv, fetchzip, mkfontdir }:

stdenv.mkDerivation rec {
  name = "scientifica-${version}";
  version = "v2.1";

  src = fetchzip {
    url = "https://github.com/NerdyPepper/scientifica/releases/download/${version}/${name}.tar";
    sha256 = "1mji70h5qdplx0rlhijrdpbmvd0c6fvnr70sla032gfs5g6f78cn";
  };

  nativeBuildInputs = [ mkfontdir ];

  installPhase = ''
    install -m 644 -D bdf/* -t "$out/share/fonts/misc"
    install -m 644 -D ttf/* -t "$ttf/share/fonts/misc"
    install -m 644 -D otb/* -t "$otb/share/fonts/misc"
    mkfontdir "$out/share/fonts/misc"
    mkfontdir "$ttf/share/fonts/misc"
    mkfontdir "$otb/share/fonts/misc"
  '';

  outputs = [ "out" "ttf" "otb" ];

  meta = with stdenv.lib; {
    description = "Tall and condensed bitmap font for geeks";
    longDescription = ''
      Tall and condensed bitmap font for geeks.
      scientifica is largely based on creep, with a number of minor tweaks to improve readability (a matter of taste of course). Most characters are just 4px wide, which is brilliant for low dpi(90-120) displays.
    '';
    homepage = https://github.com/NerdyPepper/scientifica;
    license = licenses.ofl;
    platforms = platforms.all;
  };
}

