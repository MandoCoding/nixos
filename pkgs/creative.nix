{ pkgs, ... }:

{
environment.systemPackages = with pkgs; [

    # Creative tools
    blender
    krita
    obs-studio
    orca-slicer
    pureref
    qimgv

    # Gnome development
    icon-library
    elastic

  ];
}
