{ pkgs, pkgs-unstable, inputs, zenBrowser, ... }:

{
environment.systemPackages = with pkgs; [

    # Creative tools
    blender
    krita
    kooha
    #obs-studio
    orca-slicer
    pkgs-unstable.pureref
  ];
}
