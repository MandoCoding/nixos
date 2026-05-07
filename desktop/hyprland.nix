{ config, pkgs, ... }:
{
  services.gnome.gnome-keyring.enable = true;
  security.pam.services.sddm.enableGnomeKeyring = true;
  security.pam.services.hyprlock.enableGnomeKeyring = true;

  programs.hyprland.enable = true;

  services = {
    displayManager.sddm.enable = true;
    displayManager.sddm.wayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    libsecret      # ← add: library nm-applet uses to talk to keyring
    seahorse       # ← add: GUI to inspect/manage keyring contents
    gnome-keyring        # ← make this explicit

    hyprcursor
    rose-pine-hyprcursor

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
