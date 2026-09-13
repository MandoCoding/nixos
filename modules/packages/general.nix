{ pkgs, pkgs-unstable, inputs, zenBrowser, ... }:

{

    # special permissions
    programs.dconf.enable = true;
    services.flatpak.enable = true;

environment.systemPackages = with pkgs; [
	# Terminal Apps
	ghostty

    # general
    discord # discord client
    obsidian
    zenBrowser.packages.${pkgs.stdenv.hostPlatform.system}.default
    gparted

    # GTK Apps
    blackbox-terminal
    gnome-terminal
    gnome-text-editor
    gnome-calculator
    gnome-clocks
    gradia
    loupe
    nautilus
    resources
    cine
    papers

    # other
    proton-vpn
    stow #symlink dotfiles

    # launcher
    vicinae # raycast like
    awww # launcher wallpaper
   ];
}
