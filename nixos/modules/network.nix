{lib, ...}: {
  networking = {
    hostName = "nixtop";
    useDHCP = lib.mkDefault true;

    networkmanager = {
      enable = lib.mkDefault true;
    };
  };

  services.openssh.enable = true;
}
