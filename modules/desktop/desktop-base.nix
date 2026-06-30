{ pkgs, ... }:

{
  networking.networkmanager.enable = true;

  services.xserver.desktopManager.xterm.enable = false;
  services.xserver.excludePackages = [ pkgs.xterm ];

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [
    pkgs.xdg-desktop-portal-hyprland
  ];

  environment.sessionVariables = {
    XDG_TEMPLATES_DIR = "$HOME/.config/templates";
  };

  security.polkit.enable = true;

  services.devmon.enable = true;
  services.gvfs.enable = true;
  services.udisks2.enable = true;
}