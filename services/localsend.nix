{ config, pkgs, pkgs-unstable, inputs, lib, ... }:

{
    environment.systemPackages = with pkgs; [
        localsend
    ];

    # Enable LocalSend Ports
    networking.firewall = {
        allowedTCPPorts = [ 53317 ];
        allowedUDPPorts = [ 53317 ];
    };

}