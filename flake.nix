{
  description = "System configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    apple-fonts.url = "github:Lyndeno/apple-fonts.nix";
    thyx.url = "github:rccyx/thyx";

    zen-browser = {
      url = "github:youwen5/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, nixpkgs-unstable, zen-browser, thyx, ... }:
    let
      system = "x86_64-linux";

      pkgs-unstable = import nixpkgs-unstable {
        inherit system;
        config.allowUnfree = true;
      };

      mkHost = hostPath:
        nixpkgs.lib.nixosSystem {
          inherit system;

          modules = [
            hostPath
            thyx.nixosModules.default

            {
              services.displayManager.sddm.enable = true;
              services.displayManager.sddm.wayland.enable = true;
              services.displayManager.sddm.thyx.enable = true;
            }
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