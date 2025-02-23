{ pkgs, ... }:
{
  imports = [
    ./modules/collection.nix
  ];

  home = {
    username = "esdevries";
    homeDirectory = "/home/esdevries";
    stateVersion = "24.11";
  };

  home.packages = with pkgs; [
    materia-kde-theme
    papirus-icon-theme
  ];
}
