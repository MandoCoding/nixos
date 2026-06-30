{
  description = "System configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dms = {
      url = "github:AvengeMedia/DankMaterialShell/stable";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };

    dgop = {
      url = "github:AvengeMedia/dgop";
      inputs.nixpkgs.follows = "nixpkgs-unstable";
    };
  };

  outputs = inputs@{ nixpkgs, nixpkgs-unstable, zen-browser, ... }:
  let
    system = "x86_64-linux";

    pkgs-unstable = import nixpkgs-unstable {
      inherit system;
      config.allowUnfree = true;
    };

    mkHost = hostPath: nixpkgs.lib.nixosSystem {
      inherit system;

      modules = [
        hostPath
      ];

      specialArgs = {
        inherit inputs pkgs-unstable;
        zenBrowser = zen-browser;
      };
    };
  in
  {
    nixosConfigurations = {
      desktop-home = mkHost ./hosts/desktop-home/configuration.nix;
      desktop-work = mkHost ./hosts/desktop-work/configuration.nix;
      laptop-home = mkHost ./hosts/laptop-home/configuration.nix;
    };
  };
}