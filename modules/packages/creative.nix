{ pkgs, pkgs-unstable, inputs, zenBrowser, ... }:

{
environment.systemPackages = with pkgs; [

    # Creative tools
    blender
    krita
    obs-studio
    orca-slicer
    pkgs-unstable.pureref
    qimgv

    # Gnome development
    icon-library
    elastic

  ];
}
