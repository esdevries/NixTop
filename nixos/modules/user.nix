{ pkgs, profile, ... }:
{
  users = {
    users.${profile.userName} = {
      shell = pkgs.fish;
      ignoreShellProgramCheck = true;
      isNormalUser = true;
      description = profile.fullName;
      extraGroups = [
        "networkmanager"
        "wheel"
        "docker"
        "dialout"
      ];
    };
  };

  environment.systemPackages = with pkgs; [ fish ];
}
