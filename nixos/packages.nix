{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    
    # Commands
    fastfetch
    git
    
    # Programs
    brave
    vscode
  ];
}
