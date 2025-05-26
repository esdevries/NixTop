{
  description = "Development shell for lms42";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs =
    { nixpkgs, ... }:

    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShell = {
        "${system}" = pkgs.mkShell {
          name = "lms42-dev-shell";

          buildInputs = with pkgs; [
            python312Full
            python312Packages.gevent
            poetry
            python312Packages.pip
            nodejs
            nodePackages.npm
            postgresql_14
            glibcLocales
            gcc
          ];

          shellHook = ''
            export LANG=C
            export LC_ALL=C
            export LOCALE_ARCHIVE="${pkgs.glibcLocales}/lib/locale/locale-archive"

            echo ""
            echo -e "\033[1;32m✔ Development shell activated successfully\033[0m"
            echo "📦 Python version: $(python3 --version)"
            echo "📦 Pip version:    $(pip --version | cut -d ' ' -f2)"
            echo "📦 Poetry version: $(poetry --version)"
            echo "📦 Node.js version: $(node --version)"
            echo "📦 npm version:     $(npm --version)"
            echo ""
          '';
        };
      };
    };
}
