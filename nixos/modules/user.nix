{ pkgs, ... }: {
  users = {
    users.esdevries = {
      shell = pkgs.fish;
      ignoreShellProgramCheck = true;
      isNormalUser = true;
      description = "Erwin de Vries";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [ ];
    };
  };
}
