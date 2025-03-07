{lib, ...}: {
  networking = {
    hostName = "nixtop";
    useDHCP = lib.mkDefault true;
    wireless.iwd.enable = true;

    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
    };
  };

  services.openssh.enable = true;
}
