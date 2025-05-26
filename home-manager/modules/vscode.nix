{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;
    mutableExtensionsDir = false;
    profiles."dev" = {
      extensions =
        with pkgs.vscode-marketplace;
        [
          beardedbear.beardedtheme
        ]
        ++ (with pkgs.vscode-extensions; [
          jnoortheen.nix-ide

          bradlc.vscode-tailwindcss
          dbaeumer.vscode-eslint
          esbenp.prettier-vscode

          ms-python.python
          ms-python.vscode-pylance

          rust-lang.rust-analyzer
          vadimcn.vscode-lldb

          shd101wyy.markdown-preview-enhanced
          yzane.markdown-pdf
        ]);

      userSettings = {
        "editor.minimap.enabled" = false;
        "editor.formatOnSave" = true;
        "editor.quickSuggestions" = {
          "strings" = "on";
        };

        "files.trimTrailingWhitespace" = true;
        "files.insertFinalNewline" = true;

        "markdown-preview-enhanced.plantumlJarPath" = "$HOME/.local/share/plantuml/plantuml.jar";
        "[markdown]" = {
          "prettier.printWidth" = 80;
          "prettier.proseWrap" = "always";
        };

        "nix.enableLanguageServer" = true;
        "nix.serverPath" = "nixd";

        "[python]" = {
          "editor.tabSize" = 4;
          "editor.insertSpaces" = true;
        };
        "python.languageServer" = "Pylance";

        "rust-analyzer.check.command" = "clippy";
        "rust-analyzer.cargo.features" = "all";
        "rust-analyzer.procMacro.enable" = true;

        "[javascript]" = {
          "editor.defaultFormatter" = "esbenp.prettier-vscode";
        };
        "[typescript]" = {
          "editor.defaultFormatter" = "esbenp.prettier-vscode";
        };
        "[html]" = {
          "editor.defaultFormatter" = "esbenp.prettier-vscode";
        };

        "eslint.validate" = [
          "javascript"
          "typescript"
          "javascriptreact"
          "typescriptreact"
        ];

        "editor.codeActionsOnSave" = {
          "source.fixAll.eslint" = "explicit";
        };

        "css.validate" = false;
        "tailwindCSS.includeLanguages" = {
          plaintext = "html";
          typescript = "javascript";
          typescriptreact = "javascript";
        };

        "workbench.colorTheme" = "Bearded Theme feat. Mintshake D Raynh";
      };
    };
  };
  home.packages = with pkgs; [
    nixd
    nixfmt-rfc-style
  ];
}
