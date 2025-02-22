{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Commands
    fastfetch
    git
    htop
    
    # Programs
    brave
    vlc
    vscode
  ];
}
