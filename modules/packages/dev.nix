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
    iwd
    glib  # why
    dconf # why

    # Programming Languages
    python3
    butane
    cargo
    gcc
    uv
    go
    jq #used in k8s-quest
    wget # needed for termix flatpak
    rclone # smb searching

    # kubernetes
    k9s
    kind
    kubectl
    kubernetes-helm
    talosctl
   ];
}
