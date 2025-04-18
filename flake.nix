{
  description = "NixTop system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };

    nixos-grub-themes.url = "github:jeslie0/nixos-grub-themes";
  };

  outputs = {
    nixpkgs,
    home-manager,
    plasma-manager,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgsStable = import nixpkgs {config.allowUnfree = true;};
    commonModules = [./nixos/configuration.nix];
    profile = import ./profile.nix;

    mkConfig = name:
      nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = {
          pkgs-stable = pkgsStable;
          inherit inputs;
          inherit profile;
        };
        modules = commonModules ++ [./nixos/${name}.nix];
      };
  in {
    nixosConfigurations = {
      desktop = mkConfig "desktop";
      laptop = mkConfig "laptop";
    };

    homeConfigurations.${profile.username} = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      modules = [
        ./home-manager/home.nix
        plasma-manager.homeManagerModules.plasma-manager
      ];
      extraSpecialArgs = {inherit profile;};
    };
  };
}
