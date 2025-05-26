{
  description = "Outflaked system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.home-manager.follows = "home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    darkmatter-grub-theme = {
      url = "gitlab:VandalByte/darkmatter-grub-theme";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      darkmatter-grub-theme,
      home-manager,
      nixpkgs,
      nix-vscode-extensions,
      plasma-manager,
      ...
    }@inputs:
    let
      system = "x86_64-linux";

      pkgs = import nixpkgs {
        inherit system;
        config = {
          allowUnfree = true;
        };
        overlays = [ nix-vscode-extensions.overlays.default ];
      };

      profile = {
        userName = "esdevries";
        fullName = "Erwin de Vries";
        gitEmail = "esdevries313@gmail.com";
      };

      commonModules = [
        ./nixos/configuration.nix
        darkmatter-grub-theme.nixosModule
      ];

      mkConfig =
        name:
        nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = {
            inherit inputs;
            inherit profile;
          };
          modules = commonModules ++ [ ./nixos/hardware/${name}.nix ];
        };
    in
    {
      nixosConfigurations = {
        desktop = mkConfig "desktop";
      };

      homeConfigurations.${profile.userName} = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./home-manager/home.nix
          plasma-manager.homeManagerModules.plasma-manager
        ];

        extraSpecialArgs = {
          inherit profile;
        };
      };
    };
}
