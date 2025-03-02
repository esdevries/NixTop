{ pkgs, ... }: {
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
