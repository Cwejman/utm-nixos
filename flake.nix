{
  description = "UTM NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
    disko.url = "github:nix-community/disko";
  };

  outputs = { self, nixpkgs, flake-utils, disko, ... }: {
    nixosConfigurations.utm-nixos = nixpkgs.lib.nixosSystem {
      system = "aarch64-linux";
      modules = [
        disko.nixosModules.disko
        ./disko.nix
        ./configuration.nix
      ];
    };
  };
}
