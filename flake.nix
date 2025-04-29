{

  description = "My system configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let 
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      nixosConfigurations = {
        unwired = lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/unwired/configuration.nix ];
        };
      };
      homeConfigurations = {
        desdpy = home-manager.lib.homeManagerConfiguration {
          inherit pkgs;
          modules = [ ./users/desdpy.nix ];
        };
      };
    };
}
