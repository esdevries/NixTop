{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Commands
    fastfetch
    git
    home-manager
    htop
    nixpkgs-fmt

    # Programs
    brave
    vlc
    vscode
  ];
}
