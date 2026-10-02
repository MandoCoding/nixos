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
    inputs.eagle.packages.${pkgs.system}.default
  ];

# Eagle Machine ID hardware licensing verification
services.udev.packages = [
  inputs.eagle.packages.${pkgs.system}.default
];

}