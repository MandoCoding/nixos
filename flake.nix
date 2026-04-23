{
	description = "System configuration";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
		nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

		home-manager = {
			url = "github:nix-community/home-manager/release-25.11";
			inputs.nixpkgs.follows = "nixpkgs";
		};

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

	outputs = inputs @ { self, nixpkgs, nixpkgs-unstable, zen-browser, ... }: {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";

			modules = [
				./configuration.nix
			];

			specialArgs = {
				zenBrowser = zen-browser;
				inputs = inputs;
				pkgs-unstable = import nixpkgs-unstable {
					system = "x86_64-linux";
					config.allowUnfree = true;
				};
			};
		};
	};
}
