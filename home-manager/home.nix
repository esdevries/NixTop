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
    file.".wallpaper".source = ./static/wallpaper.jpg;
  };

  home.packages = with pkgs; [
    materia-kde-theme
    papirus-icon-theme
    (callPackage ./modules/splashscreen.nix {})
    wl-clipboard
  ];
}
