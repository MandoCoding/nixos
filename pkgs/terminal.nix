{ pkgs, ... }:

{

environment.systemPackages = with pkgs; [
	# Terminal Apps
	ghostty
    	blackbox-terminal
    	
	# Core Packages
	fish
	eza
	fastfetch
	tealdeer
	zoxide
	
	# Editors
	micro 
	neovim

	# Toys
	cava
	cavasik
	peaclock

	# Toolchain
	bat
	dysk
	nmap
	git
	
	# Terminal TUI
	ncdu
	bluetui
	yazi
	superfile

	# HW Monitoring 
	btop
	gotop
	nvtopPackages.full

  ];
}
