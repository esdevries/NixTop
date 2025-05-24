{ inputs, pkgs, ... }:
{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  environment.gnome.excludePackages = with pkgs; [
    orca
    geary
    sushi
    gnome-tour
    gnome-user-docs
    baobab
    epiphany
    gnome-contacts
    gnome-maps
    gnome-connections
    simple-scan
    yelp
  ];
}
