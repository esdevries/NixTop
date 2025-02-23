{ inputs, ... }: {
  imports = [
    ./packages.nix
    ./modules/collection.nix
  ];

  time.timeZone = "Europe/Amsterdam";

  i18n.defaultLocale = "en_US.UTF-8";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "24.11";
}
