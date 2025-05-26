{ pkgs, ... }:
{
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
    gimp
    vlc
    vscode
  ];
}
