{ pkgs, ... }:

{
  name = "crablock-dev-shell";

  packages = with pkgs; [
    rustc
    cargo
    rust-analyzer
    rustfmt
    clippy

    nodejs
    yarn
  ];

  enterShell = ''
    echo ""
    echo -e "\033[1;32m✔ Development shell activated successfully\033[0m"
    echo "🦀 Rustc version:   $(rustc --version)"
    echo "📦 Cargo version:   $(cargo --version)"
    echo "🔧 Rustfmt version: $(rustfmt --version)"
    echo "🛠️  Clippy version:  $(cargo clippy --version | head -n 1)"
    echo "🟢 Node.js version: $(node --version)"
    echo "📦 Yarn version:    $(yarn --version)"
    echo ""
  '';
}
