{ pkgs, profile, ... }:
{
  imports = [ ./modules/collection.nix ];

  nixpkgs.config.allowUnfree = true;

  home = {
    username = profile.userName;
    homeDirectory = "/home/${profile.userName}";
    stateVersion = "24.11";
    file.".face.icon".source = ./static/gigatux.png;
    file.".wallpaper".source = ./static/wallpaper.jpg;
  };

  home.packages = with pkgs; [
    materia-kde-theme
    papirus-icon-theme
    (callPackage ./modules/splashscreen.nix { })
    wl-clipboard
  ];
}
