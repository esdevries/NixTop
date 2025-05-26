{
  pkgs,
  ...
}:
let
  sddm-astronaut = pkgs.sddm-astronaut.override {
    embeddedTheme = "hyprland_kath";
    themeConfig = {
      FormPosition = "left";
      ForceHideCompletePassword = true;
    };
  };
in
{
  environment.systemPackages = [
    pkgs.kdePackages.qtmultimedia
    pkgs.kdePackages.sddm-kcm
    sddm-astronaut
  ];

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "sddm-astronaut-theme";
    extraPackages = [ sddm-astronaut ];
  };

  services.desktopManager.plasma6.enable = true;
}
