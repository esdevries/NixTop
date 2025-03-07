{lib, ...}: {
  networking = {
    hostName = "nixtop";
    useDHCP = lib.mkDefault true;
    wireless.iwd.enable = lib.mkForce true;

    networkmanager = {
      enable = lib.mkDefault true;
      wifi.backend = lib.mkForce "iwd";
    };
  };

  services.openssh.enable = true;
}
