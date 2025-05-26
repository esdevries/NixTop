{ profile, ... }:
{
  imports = [
    ./modules/collection.nix
    ./packages.nix
  ];

  home = {
    username = profile.userName;
    homeDirectory = "/home/${profile.userName}";
    stateVersion = "24.11";
    file.".face.icon".source = ./static/gigatux.png;
    file.".wallpaper".source = ./static/wallpaper.jpg;
  };
}
