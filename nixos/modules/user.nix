{ pkgs, profile, ... }: {
  users = {
    users.${profile.username} = {
      shell = pkgs.fish;
      ignoreShellProgramCheck = true;
      isNormalUser = true;
      description = "Erwin de Vries";
      extraGroups = [ "networkmanager" "wheel" "docker" ];
      packages = with pkgs; [ ];
    };
  };
}
