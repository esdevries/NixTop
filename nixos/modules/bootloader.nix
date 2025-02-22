{
  boot.loader = {
    grub = {
      enable = true;
      efiSupport = true;
      useOSProber = true;
      efiInstallAsRemovable = true;
      device = "nodev";
    };
  };
}
