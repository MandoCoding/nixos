{ pkgs, pkgs-unstable, inputs, zenBrowser, ... }:

{

	# special permissions
    programs.firefox.enable = true;
    programs.dconf.enable = true;
    services.flatpak.enable = true;

environment.systemPackages = with pkgs; [
	# Temp
	host
	dnslookup
	
  # KDE Plasma
    home-manager

    # dependencies
    pciutils
    direnv
    cargo
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

  ];
}
