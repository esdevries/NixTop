{lib, ...}: {
  networking = {
    hostName = "nixtop";

    networkmanager = {
      enable = true;
    };
  };

  services.openssh.enable = true;
}
