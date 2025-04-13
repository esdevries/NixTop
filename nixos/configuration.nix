{ inputs, ... }: {
  imports = [
    ./packages.nix
    ./modules/collection.nix
  ];

  time.timeZone = "Europe/Amsterdam";
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # WHY IS IT SO HARD TO FIND THIS SETTING AND WHY IS FALSE NOT THE DEFAULT
  nix.settings.warn-dirty = false;

  system.stateVersion = "24.11";
}
