{ pkgs, ... }:
{
  boot.loader = {
    systemd-boot.enable = false;
    efi.canTouchEfiVariables = true;

    grub = {
      enable = true;
      efiSupport = true;
      useOSProber = true;
      device = "nodev";

      darkmatter-theme = {
        enable = true;
        style = "nixos";
        icon = "color";
        resolution = "1440p";
      };

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
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
