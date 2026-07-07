{ pkgs, pkgs-unstable, ... }:

{

environment.systemPackages = with pkgs; [
    nmap
    amass

    nmap
    burpsuite
    ffuf
    gobuster
    metasploit
    sqlmap
    burpsuite
    macchanger
    hashcat
    arping
    wireshark

    nikto
    whatweb
   ];
}
# require seperate installs:
# - spiderfoot
# - legion
# - unicornscan
# - linpeas