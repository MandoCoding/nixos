{
  description = "System configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    apple-fonts.url = "github:Lyndeno/apple-fonts.nix";
    qylock.url = "github:Darkkal44/qylock";

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

  outputs = inputs@{ nixpkgs, nixpkgs-unstable, zen-browser, qylock, ... }:
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
        qylock.nixosModules.default

        ({ pkgs, ... }: {
          services.displayManager.sddm.enable = true;
          services.displayManager.sddm.wayland.enable = true;

          programs.qylock = {
            enable = true;
            theme = "pixel-dusk-city";

            themeOptions = {
              terraria.backgroundMode = "time";
              Genshin.backgroundMode = "time";
              clockwork.orbital = {
                themeMode = "dark";
                enableWindup = true;
              };
              osu.gameMode = "menu";
            };
          };
        })
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