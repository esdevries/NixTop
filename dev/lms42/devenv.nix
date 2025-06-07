# devenv.nix
{ pkgs, ... }:

{
  name = "lms42-dev-shell";

  packages = with pkgs; [
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

  env = {
    LANG = "C";
    LC_ALL = "C";
    LOCALE_ARCHIVE = "${pkgs.glibcLocales}/lib/locale/locale-archive";
  };

  enterShell = ''
    echo ""
    echo -e "\033[1;32m✔ Development shell activated successfully\033[0m"
    echo "📦 Python version: $(python3 --version)"
    echo "📦 Pip version:    $(pip --version | cut -d ' ' -f2)"
    echo "📦 Poetry version: $(poetry --version)"
    echo "📦 Node.js version: $(node --version)"
    echo "📦 npm version:     $(npm --version)"
    echo ""
  '';
}
