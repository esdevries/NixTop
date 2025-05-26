{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bat
    dconf2nix
    devenv
    fastfetch
    htop

    brave
    firefox
    gimp
    vlc

    (callPackage ./modules/splashscreen.nix { })
    materia-kde-theme
    papirus-icon-theme
  ];
}
