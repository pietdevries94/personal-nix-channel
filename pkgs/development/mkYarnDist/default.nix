{
  pkgs
}:

{ 
  src,
  pname ? (pkgs.lib.importJSON packageJSON).name,
  version ? (pkgs.lib.importJSON packageJSON).version,
  # For caching, it's better to manually add packageJSON and yarnLock
  packageJSON ? "${src}/package.json",
  yarnLock ? "${src}/yarn.lock",
  pkgs ? pkgs,
  nodejs ? pkgs.nodejs-12_x,
  yarn ? pkgs.yarn
}:

let
  inherit (pkgs) lib;
  inherit (pkgs.yarn2nix-moretea) mkYarnModules;
  inherit (pkgs.stdenv) mkDerivation;

  nodeDependencies = mkYarnModules rec {
    inherit pname version packageJSON yarnLock;
    name = "${pname}-modules-${version}";
  };
in
mkDerivation rec {
  inherit pname version src;

  buildInputs = [
    yarn
    nodejs
  ];

  buildPhase = ''
    ln -s ${nodeDependencies}/node_modules ./node_modules

    yarn build
  '';

  installPhase = ''
    mkdir -p $out
    cp -R dist/* $out
  '';
}