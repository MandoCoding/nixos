{ pkgs, pkgs-unstable, inputs, zenBrowser, ... }:

{

    # special permissions
    programs.dconf.enable = true;
    # programs.firefox.enable = true;
    # services.flatpak.enable = true;

environment.systemPackages = with pkgs; [
	# Temp
	basalt #obsidian TUI

	# Networking
	host
	dnslookup
	
  # KDE Plasma
    home-manager

    # dependencies
    pciutils
    direnv
    pkgs-unstable.cargo
    glib
    dconf
    gcc
    iwd
    go
    unzip
    gh
    xdg-utils
    uv #python installer
    
    # misc
    discord
    gparted
    wl-clipboard
    slurp
    zenBrowser.packages.${pkgs.stdenv.hostPlatform.system}.default
    
    # Editors
    vscodium-fhs
    jetbrains.datagrip
    jetbrains.idea-oss

    # Testing
    quickemu
    quickgui
    OVMF
    pkgs.OVMF.fd
    boxes
    openconnect

    # GTK Apps
    adw-bluetooth
    gnome-software
    gnome-text-editor
    gradia
    loupe
    nautilus
    netpeek
    recordbox
    resources
    speedtest
    switcheroo
    nmgui
    footage
    pkgs-unstable.cine

  ];
}
