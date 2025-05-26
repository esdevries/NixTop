<div align="center">

# Outflaked System Configuration

### This repository contains my personal NixOS system configuration, designed exactly as I see fit.

</div>

![](./home-manager/static/example.png)

---

## Usage

### Getting Outflaked

Install NixOS like you normally would, and clone the repo.

```bash
# Assuming this is the first time booting NixOS after installation and you don't have git.
nix-shell -p git
git clone https://github.com/esdevries/Outflaked.git && cd Outflaked
```

### Edit personal details

Next, make sure to update the `flake.nix` file with your own personal details.

```nix
# Example of what might be in flake.nix
profile = {
  userName = "YOUR_USERNAME";
  fullName = "YOUR_FULL_NAME";
  gitEmail = "YOUR_GIT_EMAIL";
};
```

### Copy hardware configuration.nix

```bash
cp /etc/nixos/hardware-configuration.nix ./nixos/hardware/desktop.nix
```

### Install

```bash
./build.sh
```
