{ pkgs, pkgs-unstable, inputs, zenBrowser, ... }:

{

    # special permissions
    programs.dconf.enable = true;
    services.flatpak.enable = true;

environment.systemPackages = with pkgs; [
    # Networking
    host
    dnslookup
    inetutils
    openvpn

    # Version control
    git
    github-cli

    # Editors
    pkgs-unstable.jetbrains.idea
    pkgs-unstable.jetbrains.datagrip
    pkgs-unstable.jetbrains.webstorm

    # Testing
    quickemu
    quickgui
    OVMF
    pkgs.OVMF.fd
    boxes
    openconnect
    iperf3

    # misc
    discord
    gparted
    wl-clipboard
    slurp
    zenBrowser.packages.${pkgs.stdenv.hostPlatform.system}.default
    localsend

    # GTK Apps
    adw-bluetooth
    gnome-software
    gnome-text-editor
    gradia
    loupe
    nautilus
    netpeek
    resources
    speedtest
    switcheroo
    nmgui
    footage
    pkgs-unstable.cine

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
    butane
  ];
}
