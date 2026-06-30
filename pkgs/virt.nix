{ pkgs, pkgs-unstable, inputs, zenBrowser, ... }:

{

environment.systemPackages = with pkgs; [
    # Testing
    quickemu
    quickgui
    OVMF
    boxes
    ];
}