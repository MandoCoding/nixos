{ pkgs, pkgs-unstable, inputs, zenBrowser, ... }:

{

environment.systemPackages = with pkgs; [
    google-chrome
    onlyoffice-desktopeditors

    element-desktop
    keepassxc

    obs-studio # screen-capture for  tutorials
    foliate # e-book reader

  ];
}