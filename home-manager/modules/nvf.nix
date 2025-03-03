{
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
          enableExtraDiagnostics = true;

          bash.enable = true;
          clang.enable = true;
          go.enable = true;
          python.enable = true;

          markdown.enable = true;
          markdown.extensions.render-markdown-nvim.enable = true;

          nix.enable = true;
        };

        visuals = {
          nvim-scrollbar.enable = true;
          nvim-web-devicons.enable = true;
          nvim-cursorline.enable = true;
          cinnamon-nvim.enable = true;
          fidget-nvim.enable = true;

          highlight-undo.enable = true;
          indent-blankline.enable = true;

          # Fun
          cellular-automaton.enable = false;
        };

        utility.preview.markdownPreview.enable = true;
      };
    };
  };
}
