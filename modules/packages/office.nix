{ pkgs, pkgs-unstable, inputs, zenBrowser, ... }:

{

environment.systemPackages = with pkgs; [
    google-chrome
    onlyoffice-desktopeditors
    papers

    element-desktop
    keepassxc

    obs-studio # screen-capture for  tutorials

  ];
}