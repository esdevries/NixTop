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

        spellcheck = {
          enable = true;
        };

        lsp = {
          formatOnSave = true;
          lspkind.enable = false;
          lightbulb.enable = true;
          lspsaga.enable = false;
          trouble.enable = true;
          lspSignature.enable = true;
          otter-nvim.enable = true;
          lsplines.enable = true;
          nvim-docs-view.enable = true;
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
