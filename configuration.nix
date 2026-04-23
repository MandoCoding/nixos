{ config, pkgs, pkgs-unstable, inputs, lib, ... }:

{
	imports =
		[
		# Hardware requirements
		./hardware-configuration.nix
		./hardware-extra.nix
	
		# Graphics Shell
		./locals/german.nix
		./desktop/kde.nix
		./desktop/hyprland.nix

		 # Packages
		./pkgs/creative.nix
		./pkgs/docker.nix
		./pkgs/fonts.nix
		./pkgs/gaming.nix
		./pkgs/misc.nix
		./pkgs/terminal.nix
    	./pkgs/tailscale.nix
	];

	# Bootloader.
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	networking.hostName = "nixos";
	networking.networkmanager.enable = true;
	services.xserver.desktopManager.xterm.enable = false;
	services.xserver.excludePackages = [ pkgs.xterm ];

	hardware.graphics = {
		enable = true;
		enable32Bit = true;
	};

    # Other
	xdg.portal.enable = true;
	xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-hyprland ];
	environment.sessionVariables = {
		XDG_TEMPLATES_DIR="$HOME/.config/templates";
	};

	# Enable sound
	services.pulseaudio.enable = false;
	security.rtkit.enable = true;
	services.pipewire = {
	enable = true;
	alsa.enable = true;
	alsa.support32Bit = true;
	pulse.enable = true;
	};

	# Define User
	users.users.mando = {
	isNormalUser = true;
	description = "mando";
	extraGroups = [ "networkmanager" "wheel" ];
	};
	security.polkit.enable = true;
	services.devmon.enable = true;
	services.gvfs.enable = true;
	services.udisks2.enable = true;

	# NixOS Cleanup
	boot.loader.systemd-boot.configurationLimit = 10;
	nix.gc.automatic = true;
	nix.gc.dates = "weekly"; # Or "daily"
	nix.gc.options = "--delete-older-than 7d";

	# Nix Options
	nixpkgs.config.allowUnfree = true;
	programs.nix-ld.enable = true;
	nix.settings.experimental-features = [ "nix-command" "flakes" ];
	system.stateVersion = "25.11";

}
