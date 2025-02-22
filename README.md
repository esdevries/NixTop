# NixOS system configuration
This repository contains my personal NixOS system configuration, designed exactly as I see fit. It uses a flake for reproducibility and declarative system management.

## Usage
```bash
git clone https://github.com/esdevries/nixfig.git
cd nixfig

cp /etc/nixos/hardware-configuration.nix ./nixos/
sudo nixos-rebuild switch --flake .
```