{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    themeFile = "GitHub_Dark_Colorblind";
    font = {
      name = "Hack";
      package = pkgs.nerd-fonts.hack;
      size = 12;
    };
    settings = {
      background_opacity = "0.85";
      enable_audio_bell = false;
    };
  };
}
