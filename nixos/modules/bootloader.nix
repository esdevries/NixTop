{ inputs, pkgs, ... }:
{
  boot.loader = {
    systemd-boot.enable = false;

    grub = {
      enable = true;
      efiSupport = true;
      useOSProber = true;
      efiInstallAsRemovable = true;
      device = "nodev";
      theme = inputs.nixos-grub-themes.packages.${pkgs.system}.hyperfluent;

      extraConfig = ''
        set timeout=-1

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
}
