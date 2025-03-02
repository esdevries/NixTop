{ pkgs, ... }:
{
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;

        lsp = {
          enable = true;
        };

        languages = {
          enableFormat = true;
          enableLSP = true;
          enableTreesitter = true;

          bash.enable = true;
          clang.enable = true;
          nix.enable = true;
        };
      };
    };
  };
}
