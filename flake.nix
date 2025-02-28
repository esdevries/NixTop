{
  description = "NixTop system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";

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

  outputs = { self, nixpkgs, nixpkgs-stable, home-manager, plasma-manager, ... }@inputs:

    let
      system = "x86_64-linux";
      pkgsStable = import nixpkgs-stable { config.allowUnfree = true; };
      commonModules = [ ./nixos/configuration.nix ];
      profile = import ./profile.nix;

      mkConfig = name: nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { pkgs-stable = pkgsStable; inherit inputs; profile = profile; };
        modules = commonModules ++ [ ./nixos/${name}.nix ];
      };

    in
    {
      nixosConfigurations = rec {
        desktop = mkConfig "desktop";
        redmibook = mkConfig "redmibook";
      };

      homeConfigurations.${profile.username} = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        modules = [
          ./home-manager/home.nix
          plasma-manager.homeManagerModules.plasma-manager
        ];
        extraSpecialArgs = { profile = profile; };
      };
    };
}
