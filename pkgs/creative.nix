{ pkgs, ... }:

{
environment.systemPackages = with pkgs; [

    # Creative tools
    blender
    krita
    obsidian
    obs-studio
    orca-slicer
    pureref
    qimgv

    # ranger
    tealdeer
    yazi
    git

    # Gnome development
    icon-library
    elastic

  ];
}
