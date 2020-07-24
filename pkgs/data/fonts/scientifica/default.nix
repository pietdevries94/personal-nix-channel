{ lib, fetchzip }:

let
  version = "v2.1";

in fetchzip rec {
  name = "scientifica-${version}";

  url = "https://github.com/NerdyPepper/scientifica/releases/download/${version}/${name}.tar";

  sha256 = "0jp3icsg13fxjgi3fxmvr9mzjrdyysmmdayz3ii5ims8i2493qcq";

  postFetch = ''
    mkdir -p $out/share/fonts/truetype
    tar -xf $downloadedFile -C $out/share/fonts/truetype --strip-components=2  scientifica/ttf 
  '';

  meta = with lib; {
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

