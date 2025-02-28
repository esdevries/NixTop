{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    themeFile = "GitHub_Dark_Colorblind";
    font = {
      name = "Hack";
      package = pkgs.nerd-fonts.hack;
      size = 14;
    };
    settings = {
      confirm_os_window_close = 0;
      background_opacity = "0.85";
      enable_audio_bell = false;
    };
  };
}
