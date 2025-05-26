{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
      direnv hook fish | source

      function devenv-init-no-gitignore
        set gitignore_exists false
        if test -f .gitignore
          set gitignore_exists true
          cp .gitignore .gitignore.bak
        end

        devenv init

        if test "$gitignore_exists" = "true"
          mv .gitignore.bak .gitignore
        else
          rm -f .gitignore
        end
      end

      alias di='devenv-init-no-gitignore'
    '';
    plugins = [
      {
        name = "grc";
        src = pkgs.fishPlugins.grc;
      }
      {
        name = "fzf-fish";
        src = pkgs.fishPlugins.fzf-fish;
      }
      {
        name = "fzf-forgit";
        src = pkgs.fishPlugins.forgit;
      }
      {
        name = "done";
        src = pkgs.fishPlugins.done;
      }
      {
        name = "hydro";
        src = pkgs.fishPlugins.hydro;
      }
      {
        name = "fzf";
        src = pkgs.fzf;
      }
    ];
  };
}
