{ pkgs, pkgs-unstable, inputs, zenBrowser, ... }:

{

environment.systemPackages = with pkgs; [
    # Networking
    host
    dnslookup
    openvpn

    # Version control
    git
    github-cli

    # Editors
    pkgs-unstable.jetbrains.idea
    pkgs-unstable.jetbrains.datagrip
    pkgs-unstable.jetbrains.webstorm

    # Linux utils
    inetutils
    xdg-utils
    pciutils
    direnv
    iwd # i use nmcli
    glib  # why
    dconf # why

    # Programming Languages
    python3
    butane
    cargo
    gcc
    uv
    go
    wget # needed for termix flatpak

    # BitTorrent
    fragments

    # Experimental
    kdePackages.qttools
   ];
}
