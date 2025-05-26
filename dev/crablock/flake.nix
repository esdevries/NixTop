{
  description = "Development shell for crablock";

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
          name = "crablock-dev-shell";

          buildInputs = with pkgs; [
            rustc
            cargo
            rust-analyzer
            rustfmt
            clippy

            nodejs
            yarn
          ];

          shellHook = ''
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
        };
      };
    };
}
