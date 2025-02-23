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
    papirus-icon-theme
  ];
}
