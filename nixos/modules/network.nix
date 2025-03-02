{ lib, ... }: {
  networking.hostName = "nixtop";
  networking.networkmanager.enable = true;
  networking.useDHCP = lib.mkDefault true;

  services.openssh.enable = true;
}
