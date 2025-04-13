{ inputs, pkgs, ... }:
{
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "sddm-astronaut-theme";
  };

  services.desktopManager.plasma6.enable = true;

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    ark
    dolphin
    dolphin-plugins
    elisa
    kate
    khelpcenter
    konsole
    okular
  ];

  services.gvfs.enable = true;
}
