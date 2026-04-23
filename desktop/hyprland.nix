{ config, pkgs, ... }:

{
services.gnome.gnome-keyring.enable = true;
security.pam.services.hyprland.enableGnomeKeyring = true;
programs.hyprland.enable = true; 

services = {
	displayManager.sddm.enable = true;
	displayManager.sddm.wayland.enable = true;
};

environment.systemPackages = with pkgs; [
    hyprland
    hyprlock
    hyprpaper
    hyprsunset
    hyprpolkitagent
    
    swaynotificationcenter
    swayosd
    
    waybar
    rofi
  ];
}
