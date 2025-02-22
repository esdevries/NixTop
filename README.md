# NixOS system configuration
This repository contains my personal NixOS system configuration, designed exactly as I see fit. It uses a flake for reproducibility and declarative system management.

## Usage

This script sets up NixOS using a flake for configuration management. Assuming this is the first time booting NixOS after installation.

```bash
nix-shell -p git
git clone https://github.com/esdevries/nixfig.git

cd nixfig
cp /etc/nixos/hardware-configuration.nix ./nixos/

export NIX_CONFIG="experimental-features = nix-command flakes"
sudo nixos-rebuild switch --flake .
```
