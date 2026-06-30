{ pkgs, pkgs-unstable, inputs, zenBrowser, ... }:

{

    # special permissions
    programs.dconf.enable = true;
    services.flatpak.enable = true;

environment.systemPackages = with pkgs; [
	# Terminal Apps
	ghostty
    blackbox-terminal

    # general
    vesktop # discord client
    obsidian
    zenBrowser.packages.${pkgs.stdenv.hostPlatform.system}.default

    # GTK Apps
    gnome-text-editor
    gnome-calculator
    gnome-clocks
    adw-bluetooth
    gradia
    loupe
    nautilus
    resources
    speedtest
    switcheroo
    cine
   ];
}
