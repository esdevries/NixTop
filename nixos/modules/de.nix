{
  services.xserver = {
    enable = true;
  };

  services.displayManager.sddm = {
    enable = true;
    theme = "sddm-astronaut-theme";
  };

  services.desktopManager.plasma6.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
}
