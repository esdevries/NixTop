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
    evince
    file-roller
    firefox
    gedit
    gnome-calculator
    gnome-terminal
    mangohud
    nautilus
    steam
    vlc
    vscode

    # Misc
    kdePackages.qtmultimedia
    kdePackages.sddm-kcm
    libGL
    mesa
    sddm-astronaut
    vulkan-tools
    vulkan-loader
    vulkan-validation-layers
  ];
}
