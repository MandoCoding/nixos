{ pkgs, pkgs-unstable, inputs, zenBrowser, ... }:

{

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

    # utils/builders
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
    butane
    kubectl

    # used for k8squest
    kind #k8s in docker
    python3
    jq
   ];
}
