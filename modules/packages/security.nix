{ pkgs, pkgs-unstable, ... }:

{

environment.systemPackages = with pkgs; [
    nmap
    amass
    masscan

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
    arp-scan-rs
    clinfo
    wireshark
    wrk
    hping

    nikto
    whatweb
   ];
}
# require seperate installs:
# - spiderfoot
# - legion
# - unicornscan
# - linpeas