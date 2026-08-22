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
    discord # discord client
    obsidian
    zenBrowser.packages.${pkgs.stdenv.hostPlatform.system}.default
    gparted

    # GTK Apps
    gnome-text-editor
    gnome-calculator
    gnome-clocks
    adw-bluetooth
    gradia
    loupe
    nautilus
    resources
    lact
    foliate
    speedtest
    switcheroo
    cine

    # launcher
    vicinae # raycast like
    speedtest-cli # laucher speed test
    awww # launcher wallpaper
   ];
}
