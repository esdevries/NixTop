{
  pkgs,
  profile,
  ...
}: {
  imports = [
    ./modules/collection.nix
  ];

  home = {
    username = profile.username;
    homeDirectory = "/home/${profile.username}";
    stateVersion = "24.11";
    file.".face.icon".source = ./static/gigatux.png;
    file.".app.icon".source = ./static/tux.png;
    file.".wallpaper".source = ./static/wallpaper.jpg;
  };
}
