{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.kernelModules = [ "amdgpu" ];
  boot.kernelParams = [ "psmouse.synaptics_intertouch=0" ]; 
  boot.initrd.luks.devices."luks-d1e47f5e-b6b3-48d9-9988-d5d6cd01824d".device = "/dev/disk/by-uuid/d1e47f5e-b6b3-48d9-9988-d5d6cd01824d";
}
