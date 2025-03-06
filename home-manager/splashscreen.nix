{stdenv}:
stdenv.mkDerivation {
  pname = "simple-tux-kde-splash";
  version = "1.0";

  src = ./media/simpletuxsplash-plasma6.tar.gz;

  phases = ["unpackphase" "installphase"];

  unpackphase = ''
    tar -xvf $src
    ls -l
  '';

  installphase = ''
    mkdir -p $out/share/plasma/look-and-feel
    cp -r SimpleTuxSplash-Plasma6 $out/share/plasma/look-and-feel/
  '';
}
