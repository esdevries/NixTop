# NixOS system configuration
This repository contains my personal NixOS system configuration, designed exactly as I see fit. It uses flakes for reproducibility and declarative system management.

## Usage

This script sets up NixOS using flakes for configuration management. Assuming this is the first time booting NixOS after installation. 

### Install
```bash
nix-shell -p git
git clone https://github.com/esdevries/NixTop.git && cd NixTop

sudo nixos-rebuild switch --flake .#(redmibook|desktop)
home-manager switch --flake .
```
If you want to try this yourself, the easiest thing to do is BEFORE running nixos-rebuild switch do the following,
```bash
cp /etc/nixos/hardware-configuration.nix ./nixos/desktop.nix
```
And then,
```bash
sudo nixos-rebuild switch --flake .#desktop
```
