{pkgs, ...}: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Commands
    bat
    docker
    fastfetch
    fish
    fzf
    git
    home-manager
    htop
    python3Full
    wget


    # Programs
    arduino-ide
    brave
    firefox
    mangohud
    steam
    vlc
    vscode

    # Misc
    dconf2nix
    dconf-editor
    gnomeExtensions.blur-my-shell
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.dash-to-panel
    gnome-tweaks
    libGL
    mesa
    vulkan-tools
    vulkan-loader
    vulkan-validation-layers
  ];
}
