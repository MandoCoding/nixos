{ pkgs, ... }:

{

environment.systemPackages = with pkgs; [
	# Core Packages
	fish
	eza
	fastfetch
	tealdeer
	zoxide
	wl-clipboard # copy/paste

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
	ripgrep
	unzip
	
	# Terminal TUI
	gdu
	bluetui
	yazi
	broot #interactive tree
	tree #static tree
	file # encoding checker

	# HW Monitoring 
	btop
	gotop
	nvtopPackages.full

  ];
}
