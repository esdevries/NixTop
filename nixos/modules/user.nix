{ pkgs, profile, ... }: {
  users = {
    users.${profile.username} = {
      shell = pkgs.fish;
      ignoreShellProgramCheck = true;
      isNormalUser = true;
      description = profile.fullname;
      extraGroups = [ "networkmanager" "wheel" "docker" ];
      packages = with pkgs; [ ];
    };
  };
}
