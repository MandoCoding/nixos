{ config, pkgs, ... }:

{
  # Enable the KDE Plasma Desktop Environment.
services = {
  desktopManager.plasma6.enable = true;
  displayManager.sddm.enable = true;
  displayManager.sddm.wayland.enable = true;
};
  
  environment.plasma6.excludePackages = with pkgs; [
  kdePackages.elisa # Music player
  kdePackages.kdepim-runtime # Akonadi agents
  kdePackages.kmahjongg
  kdePackages.kmines
  kdePackages.konversation # IRC client
  kdePackages.kpat # Solitaire
  kdePackages.ksudoku
  kdePackages.ktorrent
];

environment.systemPackages = with pkgs; [
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.qt5.qtmultimedia
    kdePackages.qtmultimedia
    plasma-panel-colorizer
    themechanger
];
}
