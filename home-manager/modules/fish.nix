{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
    plugins = [
      { name = "grc"; src = pkgs.fishPlugins.grc; }
      { name = "fzf-fish"; src = pkgs.fishPlugins.fzf-fish; }
      { name = "fzf-forgit"; src = pkgs.fishPlugins.forgit; }
      { name = "done"; src = pkgs.fishPlugins.done; }
      { name = "hydro"; src = pkgs.fishPlugins.hydro; }
      { name = "fzf"; src = pkgs.fzf; }
    ];
  };
}