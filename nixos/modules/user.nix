{ pkgs, ... }: {
  users = {
    users.esdevries = {
      isNormalUser = true;
      description = "Erwin de Vries";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [];
    };
  };
}
