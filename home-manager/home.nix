{ pkgs, profile, ... }:
{
  imports = [
    ./modules/collection.nix
  ];

  home = {
    username = profile.username;
    homeDirectory = "/home/${profile.username}";
    stateVersion = "24.11";
    file.".face.icon".source = ./media/gigatux.png;
    file.".wallpaper".source = ./media/wallpaper.jpg;
  };

  home.packages = with pkgs; [
    kdePackages.kcalc
    materia-kde-theme
    papirus-icon-theme
  ];
}
