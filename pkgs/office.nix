{ pkgs, pkgs-unstable, inputs, zenBrowser, ... }:

{

environment.systemPackages = with pkgs; [
    google-chrome
    onlyoffice-desktopeditors
    gnome-calculator
    gnome-clocks

    element-desktop
    keepassxc

  ];
}