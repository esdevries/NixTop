{ pkgs, profile, ... }:
{
  imports = [
    ./modules/collection.nix
  ];

  environment.systemPackages = with pkgs; [ home-manager ];

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix.settings.trusted-users = [
    "root"
    profile.userName
  ];

  # WHY IS IT SO HARD TO FIND THIS SETTING AND WHY IS FALSE NOT THE DEFAULT
  nix.settings.warn-dirty = false;

  system.stateVersion = "24.11";
}
