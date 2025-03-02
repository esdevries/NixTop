<div align="center">

# NixTop System Configuration  

### This repository contains my personal NixOS system configuration, designed exactly as I see fit.

</div>

![](./home-manager/media/example.png)

---

## Usage

### Getting NixTop

Install NixOS like you normally would, and clone the repo.
```bash
# Assuming this is the first time booting NixOS after installation and you don't have git. 
nix-shell -p git
git clone https://github.com/esdevries/NixTop.git && cd NixTop
```
### Edit personal details
Next, make sure to update the `profile.nix` file with your own personal details.

```nix
# Example of what might be in profile.nix
{
  username = "YOUR_USERNAME";
  fullname = "YOUR_FULL_NAME";
  gitemail = "YOUR_GIT_EMAIL";
}
```

### Copy hardware configuration.nix
```bash
cp /etc/nixos/hardware-configuration.nix ./nixos/desktop.nix
```

### Install
```bash
./build.sh
```
