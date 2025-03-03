{...}: {
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        viAlias = true;
        vimAlias = true;
        utility.icon-picker.enable = true;
        mini.icons.enable = true;

        theme = {
          enable = true;
          name = "tokyonight";
          transparent = true;
          style = "night";
        };

        lsp = {
          enable = true;
          formatOnSave = true;
        };

        languages = {
          enableFormat = true;
          enableLSP = true;
          enableTreesitter = true;

          bash.enable = true;
          clang.enable = true;

          markdown.enable = true;
          markdown.extensions.render-markdown-nvim.enable = true;

          nix.enable = true;
        };
        utility.preview.markdownPreview.enable = true;
      };
    };
  };
}
