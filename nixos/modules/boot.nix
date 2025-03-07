{
  inputs,
  pkgs,
  ...
}: {
  boot.loader = {
    systemd-boot.enable = false;
    efi.canTouchEfiVariables = true;

    grub = {
      enable = true;
      efiSupport = true;
      useOSProber = true;
      device = "nodev";
      theme = inputs.nixos-grub-themes.packages.${pkgs.system}.hyperfluent;
      extraConfig = "set timeout=-1";

      extraEntries = ''
        menuentry "UEFI Firmware Settings" {
          fwsetup
        }

        menuentry "Reboot" {
          reboot
        }

        menuentry "Poweroff" {
          halt
        }
      '';
    };
  };

  boot.kernelPackages = pkgs.linuxPackages_6_13;
}
