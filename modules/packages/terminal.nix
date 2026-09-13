{ pkgs, ... }:

{

environment.systemPackages = with pkgs; [
	# Core Packages
	eza
	fish
	fastfetch
	tealdeer
	zoxide

	# Editors
	micro 
	neovim

	# Toys
	cava
	peaclock

	# Toolchain
	bat
	dysk
	git
	ripgrep
	unzip
	
	# Terminal TUI
	gdu #ncdu alternative
	yazi
	tre-command #static tree

	# HW Monitoring 
	btop
	nvtopPackages.full

  ];
}
