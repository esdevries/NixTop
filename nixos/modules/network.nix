{
  networking = {
    hostName = "outflaked";

    networkmanager = {
      enable = true;
    };
  };

  services.openssh.enable = true;
}
