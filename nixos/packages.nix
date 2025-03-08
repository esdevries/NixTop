{pkgs, ...}: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Commands
    docker
    fastfetch
    git
    home-manager
    htop
    python3Full
    wget

    # Programs
    brave
    firefox
    vlc
    vscode

    # Misc
    kdePackages.qtmultimedia
    kdePackages.sddm-kcm
    sddm-astronaut
  ];
}
